import 'package:flutter/material.dart';
import '../home/home_screen.dart';
import 'fade_route.dart';
import 'validators.dart';
import '../../l10n/app_localizations.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _pass = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }

  void _submit() {
    final loc = AppLocalizations.of(context);
    if (!_formKey.currentState!.validate()) return;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(loc.translate('accountSignedIn')),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
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
      appBar: AppBar(title: Text(loc.translate('signIn'))),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submit,
                child: Text(loc.translate('signIn')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
