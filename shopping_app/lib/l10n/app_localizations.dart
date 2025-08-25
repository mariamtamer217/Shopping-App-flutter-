import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;
  AppLocalizations(this.locale);

  static const _localizedStrings = {
    'en': {
      'appTitle': 'Shopping App',
      'welcome': 'Welcome!',
      'signUp': 'Sign-up',
      'signIn': 'Sign-in',
      'ourProducts': 'Our Products',
      'hotOffers': 'Hot Offers',
      'accountCreated': 'Account created successfully',
      'accountSignedIn': 'Account sign-in successfully',
      'close': 'Close',

      // Offers
      'offer1': '50% off selected items',
      'offer2': 'Buy 1 get 1 free',
      'offer3': 'Flash sale today',
      'offer4': 'New arrivals discount',
      'offer5': 'Free shipping weekend',

      // Validation messages
      'fieldRequired': 'Required',
      'nameUppercase': 'First letter must be uppercase',
      'emailInvalid': 'Email must include @',
      'passwordShort': 'Min 6 chars',
      'passwordsDoNotMatch': 'Passwords do not match',

      // Form labels
      'fullName': 'Full Name',
      'email': 'Email',
      'password': 'Password',
      'confirmPassword': 'Confirm Password',

      // UI elements
      'specialOffer': 'Special Offer',
      'popularProducts': 'Popular Products',
      'all': 'All',
      'electronics': 'Electronics',
      'fashion': 'Fashion',
      'home': 'Home',
      'sports': 'Sports',

      // Bottom Navigation
      'wishlist': 'Wishlist',
      'notifications': 'Notifications',
      'profile': 'Profile',
      'itemAddedToCart': 'Item added to the cart',
    },
    'ar': {
      'appTitle': 'تطبيق التسوق',
      'welcome': 'أهلاً بك!',
      'signUp': 'إنشاء حساب',
      'signIn': 'تسجيل الدخول',
      'ourProducts': 'منتجاتنا',
      'hotOffers': 'العروض الساخنة',
      'accountCreated': 'تم إنشاء الحساب بنجاح',
      'accountSignedIn': 'تم تسجيل الدخول بنجاح',
      'close': 'إغلاق',

      // Offers
      'offer1': 'خصم 50٪ على منتجات مختارة',
      'offer2': 'اشترِ واحدًا واحصل على الآخر مجانًا',
      'offer3': 'تخفيضات سريعة اليوم',
      'offer4': 'خصومات على المنتجات الجديدة',
      'offer5': 'شحن مجاني في عطلة نهاية الأسبوع',

      // Validation messages
      'fieldRequired': 'مطلوب',
      'nameUppercase': 'يجب أن يبدأ الاسم بحرف كبير',
      'emailInvalid': 'يجب أن يحتوي البريد على @',
      'passwordShort': 'الحد الأدنى 6 أحرف',
      'passwordsDoNotMatch': 'كلمتا المرور غير متطابقتين',

      // Form labels
      'fullName': 'الاسم الكامل',
      'email': 'البريد الإلكتروني',
      'password': 'كلمة المرور',
      'confirmPassword': 'تأكيد كلمة المرور',

      // UI elements
      'specialOffer': 'عرض خاص',
      'popularProducts': 'المنتجات الشائعة',
      'all': 'الكل',
      'electronics': 'إلكترونيات',
      'fashion': 'أزياء',
      'home': 'منزل',
      'sports': 'رياضة',

      // Bottom Navigation
      'wishlist': 'المفضلة',
      'notifications': 'الإشعارات',
      'profile': 'الملف الشخصي',
      'itemAddedToCart': 'تمت إضافة العنصر إلى السلة',
    }
  };

  String translate(String key) {
    return _localizedStrings[locale.languageCode]![key] ?? key;
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate old) => false;
}
