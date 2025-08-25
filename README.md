# 🛍️ Shopping App (Flutter)

A **multilingual shopping application** built with **Flutter** as part of an academic assignment. The app demonstrates **clean architecture**, **localization**, **state management basics**, and a **modern UI**.

---

## ✅ Features

✔ **Welcome Screen**

* Custom font **(Suwannaphum)** applied to main heading
* Two images (**local** & **online**)
* **Language Switch**: English 🇬🇧 & Arabic 🇪🇬 (RTL support)

✔ **Authentication**

* **Sign Up & Sign In forms** with validation
* Custom validation for **name**, **email**, and **password**
* **Dialogs** for success messages
* Fade transition navigation

✔ **Home Screen**

* **Featured Products** (PageView with gradient overlay)
* **Categories** with icons
* **Products Grid** (2 per row, dynamic data)
* Add to Cart functionality with **SnackBar** feedback
* **Hot Offers Section** with localized descriptions

✔ **Localization**

* Full English & Arabic support
* RTL layout for Arabic
* All strings handled by `AppLocalizations`

✔ **Other**

* Clean folder structure
* Reusable widgets
* Modern UI with **Material Design 3 principles**

---

## 📸 Screenshots

| Welcome Screen                      | Sign Up                            | Sign In                            |
| ----------------------------------- | ---------------------------------- | ---------------------------------- |
| [Welcome](screenshots/welcome.png) | [Sign Up](screenshots/signup.png) | [Sign In](screenshots/signin.png) |

| Dialog                            | Home Screen                         | Arabic UI                           |
| --------------------------------- | ----------------------------------- | ----------------------------------- |
| [Dialog](screenshots/dialog.png) | [Home](screenshots/homescreen.png) | [Arabic](screenshots/arabicui.png) |

---

## 🛠 How to Run

1. **Clone this repository**

   ```bash
   git clone https://github.com/mariamtamer217/shopping_app.git
   cd shopping_app
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the app**

   ```bash
   flutter run
   ```

---

## 📂 Folder Structure

```
lib/
  core/
    routes.dart
    theme.dart
  features/
    welcome/
    auth/
    home/
    cart/
  l10n/
    app_localizations.dart
```

---

## 🌐 Localization

* Supported Languages:

  * **English (en)**
  * **Arabic (ar)**

**To change the language:**
On the **Welcome Screen**, click the language toggle button to switch between English and Arabic.

---

## 🎨 Custom Font

* **Font Used:** Suwannaphum-Regular
* Configured in `pubspec.yaml`
* Applied on Welcome Screen titles

---

## 🔑 Validations

* **Name:** Must start with uppercase
* **Email:** Must contain `@`
* **Password:** Minimum 6 characters
* **Confirm Password:** Matches the password field

---

## 🛠 Tech Stack

* **Framework:** Flutter (Dart)
* **Architecture:** Feature-based folder structure
* **Localization:** Custom `AppLocalizations` + `flutter_localizations`
* **UI:** Material Components, PageView, GridView

---

## ✅ Assignment Requirements Covered

✔ Welcome screen with **local & network image**, **custom font**, and **language switch**
✔ Full **localization** with RTL for Arabic
✔ Authentication screens with **validations** and **dialogs**
✔ Fade transition to home screen
✔ Home screen with **PageView banners**, **products grid**, **hot offers**, and **bottom navigation**
✔ Add to cart feedback with **SnackBar**
✔ **Clean code & reusable widgets**

---


