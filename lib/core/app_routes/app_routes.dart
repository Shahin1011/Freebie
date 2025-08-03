// ignore_for_file: prefer_const_constructors
import 'package:freebie/view/screens/Account/account_screen.dart';
import 'package:freebie/view/screens/Cart/cart_screen.dart';
import 'package:freebie/view/screens/Cart/checkout_screen.dart';
import 'package:freebie/view/screens/auth/reset_password_screen/reset_password_screen.dart';
import 'package:freebie/view/screens/home/home_screen.dart';
import 'package:freebie/view/screens/home/notification_screen/empty_notification_screen.dart';
import 'package:freebie/view/screens/home/notification_screen/notification_screen.dart';
import 'package:freebie/view/screens/home/product_details_screen.dart';
import 'package:freebie/view/screens/saved/saved_screen.dart';
import 'package:freebie/view/screens/search/search_screen.dart';
import 'package:get/get.dart';
import '../../view/screens/auth/login_screen/login_screen.dart';
import '../../view/screens/auth/reset_password_screen/forgot_password_screen.dart';
import '../../view/screens/auth/reset_password_screen/verification_screen.dart';
import '../../view/screens/auth/singup_screen/singup_screen.dart';
import '../../view/screens/onboarding_screen/onboarding_screen.dart';
import '../../view/screens/splash_screen/splash_screen.dart';



class AppRoutes {

  static const String splashScreen = "/SplashScreen";
  static const String onboardingScreen = "/OnboardingScreen";
  static const String signUpScreen = "/SignUpScreen";
  static const String loginScreen = "/LoginScreen";
  static const String forgotPasswordScreen = "/ForgotPasswordScreen";
  static const String verificationScreen = "/VerificationScreen";
  static const String resetPasswordScreen = "/ResetPasswordScreen";
  static const String homeScreen = "/HomeScreen";
  static const String searchScreen = "/SearchScreen";
  static const String savedScreen = "/SavedScreen";
  static const String cartScreen = "/CartScreen";
  static const String accountScreen = "/AccountScreen";
  static const String productDetailsScreen = "/ProductDetailsScreen";
  static const String emptyNotificationScreen = "/EmptyNotificationScreen";
  static const String notificationScreen = "/NotificationScreen";
  static const String checkoutScreen = "/CheckoutScreen";








  static List<GetPage> routes = [

    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: onboardingScreen, page: () => OnboardingScreen()),
    GetPage(name: signUpScreen, page: () => SignUpScreen()),
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: forgotPasswordScreen, page: () => ForgotPasswordScreen()),
    GetPage(name: verificationScreen, page: () => VerificationScreen()),
    GetPage(name: resetPasswordScreen, page: () => ResetPasswordScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: searchScreen, page: () =>  SearchScreen()),
    GetPage(name: savedScreen, page: () => SavedScreen()),
    GetPage(name: cartScreen, page: () => CartScreen()),
    GetPage(name: accountScreen, page: () => AccountScreen()),
    GetPage(name: productDetailsScreen, page: () => ProductDetailsScreen()),
    GetPage(name: emptyNotificationScreen, page: () => EmptyNotificationScreen()),
    GetPage(name: notificationScreen, page: () => NotificationScreen()),
    GetPage(name: checkoutScreen, page: () => CheckoutScreen()),



  ];
}
