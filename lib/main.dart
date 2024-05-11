import 'package:flutter/material.dart';
import 'package:fruit_hub/presentation/controller/authentication_controller.dart';
import 'package:fruit_hub/presentation/pages/add_to_basket.dart';
import 'package:fruit_hub/presentation/pages/authentication.dart';
import 'package:fruit_hub/presentation/pages/home_screen.dart';
import 'package:fruit_hub/presentation/pages/order_complete.dart';
import 'package:fruit_hub/presentation/pages/order_list.dart';
import 'package:fruit_hub/presentation/pages/track_order.dart';
import 'package:fruit_hub/presentation/pages/welcome_screen.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:fruit_hub/utils/local_storage.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  bool loggedIn = (await LocalStorage().read('username')) != null ? true : false;
  runApp(MyApp(loggedIn: loggedIn));
}

class MyApp extends StatelessWidget {
  
  final bool loggedIn;
  const MyApp({super.key, required this.loggedIn});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fruit Hub',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        fontFamily: 'Brandon',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),

          headlineMedium:
              TextStyle(fontSize: 24, fontWeight: FontWeight.w500), //24

          bodyLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500), //20
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400), //16
          bodySmall: TextStyle(fontSize: 14), //14
        ),
        dividerTheme: DividerThemeData(color: Color(Konstants.dividerGrey)),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(Konstants.orange),
          scrolledUnderElevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(Konstants.orange)),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(vertical: 14)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )))),
        inputDecorationTheme: InputDecorationTheme(
            fillColor: Color(Konstants.grey),
            filled: true,
            border: InputBorder.none,
            hintStyle: const TextStyle(fontWeight: FontWeight.w400)),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(Konstants.orange)),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/', page: () => const WelcomeScreen()),
        GetPage(
            name: '/authentication',
            page: () => const Authentication(),
            binding: AuthenticationBinding()),
        GetPage(
          name: '/home_screen',
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: '/add_to_basket',
          page: () => const AddToBasket(),
        ),
        GetPage(
          name: '/order_list',
          page: () => const OrderList(),
        ),
        GetPage(
          name: '/order_complete',
          page: () => const OrderComplete(),
        ),
        GetPage(
          name: '/track_order',
          page: () => TrackOrder(),
        ),
      ],
      initialRoute: loggedIn ? '/home_screen' : '/',
    );
  }
}
