import 'package:dusyeri_app/common/constant/route_constant.dart';
import 'package:dusyeri_app/common/constant/text_constat.dart';
import 'package:dusyeri_app/init/load_pref.dart';
import 'package:dusyeri_app/screens/attention_screen/attention.dart';
import 'package:dusyeri_app/screens/facilities_screen/facilities.dart';
import 'package:dusyeri_app/screens/facilities_screen/facilities_model/facilities_model.dart';
import 'package:dusyeri_app/screens/login_screen/login.dart';
import 'package:dusyeri_app/screens/login_screen/login_model/login_model.dart';
import 'package:dusyeri_app/screens/starter_screen/starter.dart';
import 'package:dusyeri_app/screens/starter_screen/starter_model/starter_model.dart';
import 'package:dusyeri_app/screens/welcome_screen/welcome.dart';
import 'package:dusyeri_app/screens/welcome_screen/welcome_model/welcome_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import 'screens/attention_screen/model/attention_model.dart';
import 'service/user_view_model.dart';

Future<void> main() async {
  //
  //Initialize Widgets
  WidgetsFlutterBinding.ensureInitialized();

  //Initialize SharedPrefencess
  await loadPrefs();

  //Initialize DotEnv
  await dotenv.load(fileName: ".env");

  //Device Orientation
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  ).then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserViewModel>(
            create: (_) => UserViewModel(
                  userName: TextConstant.authUserName,
                  password: TextConstant.authPassword,
                )),
        ChangeNotifierProvider<WelcomeModel>(create: (_) => WelcomeModel()),

        //Add UserViewModel to FacilitiesViewModel
        ChangeNotifierProxyProvider<UserViewModel, FacilitiesViewModel>(
          create: (BuildContext context) => FacilitiesViewModel(
              Provider.of<UserViewModel>(context, listen: false)),
          update: (BuildContext context, UserViewModel user,
                  FacilitiesViewModel? facilities) =>
              FacilitiesViewModel(user),
        ),

        //Add UserViewModel to StarterViewModel
        ChangeNotifierProxyProvider<UserViewModel, StarterViewModel>(
          create: (BuildContext context) => StarterViewModel(
              Provider.of<UserViewModel>(context, listen: false)),
          update: (BuildContext context, UserViewModel user,
                  StarterViewModel? starter) =>
              StarterViewModel(user),
        ),

        //Add UserViewModel to AttentionViewModel
        ChangeNotifierProxyProvider<UserViewModel, AttentionViewModel>(
          create: (BuildContext context) => AttentionViewModel(
              Provider.of<UserViewModel>(context, listen: false)),
          update: (BuildContext context, UserViewModel user,
                  AttentionViewModel? attentionViewModel) =>
              AttentionViewModel(user),
        ),

        //Add UserViewModel to LoginViewModel
        ChangeNotifierProxyProvider<UserViewModel, LoginViewModel>(
          create: (BuildContext context) => LoginViewModel(
              Provider.of<UserViewModel>(context, listen: false)),
          update: (BuildContext context, UserViewModel user,
                  LoginViewModel? loginViewModel) =>
              LoginViewModel(user),
        ),
      ],
      child: MaterialApp(
        title: TextConstant.title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const FacilitiesPage(),
        routes: <String, WidgetBuilder>{
          RouteConstant.starterScreen: (BuildContext context) =>
              const StarterPage(),
          RouteConstant.authScreen: (BuildContext context) => const LoginPage(),
          RouteConstant.welcomeScreen: (BuildContext context) =>
              const WelcomePage(),
          RouteConstant.attentionScren: (BuildContext context) =>
              const AttentionPage(),
          RouteConstant.facilitiesScreen: (BuildContext context) =>
              const FacilitiesPage(),
        },
      ),
    );
  }
}
