import 'package:flutter/material.dart';
import '../../core/routes.dart';
import '../home/home_screen.dart';
import 'fade_route.dart';
import 'validators.dart';
import '../../l10n/app_localizations.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _pass = TextEditingController();
  final _confirm = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _pass.dispose();
    _confirm.dispose();
    super.dispose();
  }

  void _submit() {
    final loc = AppLocalizations.of(context);
    if (!_formKey.currentState!.validate()) return;

    if (_confirm.text != _pass.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(loc.translate('passwordsDoNotMatch'))),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(loc.translate('accountCreated')),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // close dialog
              Navigator.of(context).pushAndRemoveUntil(
                FadeRoute(page: const HomeScreen()),
                (route) => false,
              );
            },
            child: Text(loc.translate('close')),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(loc.translate('signUp'))),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _name,
                decoration:
                    InputDecoration(labelText: loc.translate('fullName')),
                validator: (value) => Validators.name(value, context),
              ),
              TextFormField(
                controller: _email,
                decoration: InputDecoration(labelText: loc.translate('email')),
                validator: (value) => Validators.email(value, context),
              ),
              TextFormField(
                controller: _pass,
                decoration:
                    InputDecoration(labelText: loc.translate('password')),
                obscureText: true,
                validator: (value) => Validators.password(value, context),
              ),
              TextFormField(
                controller: _confirm,
                decoration: InputDecoration(
                    labelText: loc.translate('confirmPassword')),
                obscureText: true,
                validator: (value) => Validators.password(value, context),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submit,
                child: Text(loc.translate('signUp')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
