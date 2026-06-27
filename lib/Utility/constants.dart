import 'package:flutter/material.dart';
import 'package:my_pcot_project/Utility/colors.dart';

class Constants {
  static const BaseUrl = "http://192.168.1.104:34004/";

  static const Onboading = "api/app/onboard";

  static const SignIn = "api/users/sign-in";

  static const AddNewCompany = "api/company/new";

  static const GetUserCompanies = "api/companies/get-user-companies?userId";

  static const ReportsList = "api/data/reports/run";

  static const ColumnList = "api/data/reports/get-columns";

  // Share Pref

  static const CompanyId = "CompanyId";
  static const UserId = "UserId";

  static const Token = "Token";
  static const UserName = "UserName";

  static const UserIdentification = "UserIdentification";

  static const String IsLoggedIn = 'IsLoggedIn';
}

class AppGradients {
  // Primary
  static const LinearGradient primary = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColors.brand800, AppColors.brand400],
  );

  static const LinearGradient horizontalGradients = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color.fromARGB(98, 255, 255, 255),
      Color.fromARGB(22, 255, 255, 255),
    ],
  );

  // Dark / Black
  static const LinearGradient dark = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF000000), Color(0xFF0A0A0A), Color(0xFF1A1A1A)],
  );

  // Success
  static const LinearGradient success = LinearGradient(
    colors: [Color(0xFF11998E), Color(0xFF38EF7D)],
  );

  // Warning
  static const LinearGradient warning = LinearGradient(
    colors: [Color(0xFFFF8008), Color(0xFFFFC837)],
  );

  // Danger
  static const LinearGradient danger = LinearGradient(
    colors: [Color(0xFFCB2D3E), Color(0xFFEF473A)],
  );

  // Sunset
  static const LinearGradient sunset = LinearGradient(
    colors: [Color(0xFFFF512F), Color(0xFFF09819)],
  );

  // Ocean
  static const LinearGradient ocean = LinearGradient(
    colors: [Color(0xFF2193B0), Color(0xFF6DD5ED)],
  );

  // Purple Love
  static const LinearGradient purpleLove = LinearGradient(
    colors: [Color(0xFFCC2B5E), Color(0xFF753A88)],
  );

  // Instagram
  static const LinearGradient instagram = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFEDA75),
      Color(0xFFFA7E1E),
      Color(0xFFD62976),
      Color(0xFF962FBF),
      Color(0xFF4F5BD5),
    ],
  );

  // Sky
  static const LinearGradient sky = LinearGradient(
    colors: [Color(0xFF56CCF2), Color(0xFF2F80ED)],
  );

  // Emerald
  static const LinearGradient emerald = LinearGradient(
    colors: [Color(0xFF348F50), Color(0xFF56B4D3)],
  );

  // Gold
  static const LinearGradient gold = LinearGradient(
    colors: [Color(0xFFFFD700), Color(0xFFFFA500)],
  );

  // Radial Gradient
  static const RadialGradient radialBlue = RadialGradient(
    center: Alignment.center,
    radius: 1,
    colors: [Color(0xFF56CCF2), Color(0xFF2F80ED)],
  );

  // Radial Dark
  static const RadialGradient radialDark = RadialGradient(
    center: Alignment.center,
    radius: 1,
    colors: [Color(0xFF222222), Color(0xFF000000)],
  );

  // Sweep Gradient
  static const SweepGradient rainbow = SweepGradient(
    colors: [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.purple,
      Colors.red,
    ],
  );

  // Custom Gradient Builder
  static Gradient custom({
    required List<Color> colors,
    Alignment begin = Alignment.topLeft,
    Alignment end = Alignment.bottomRight,
  }) {
    return LinearGradient(colors: colors, begin: begin, end: end);
  }
}

