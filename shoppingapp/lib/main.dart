import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoppingapp/modules/on_boarding/on_boarding.dart';
import 'package:shoppingapp/shared/components/constants.dart';
import 'package:shoppingapp/shared/cubit/bloc_observer.dart';
import 'package:shoppingapp/shared/cubit/cubit.dart';
import 'package:shoppingapp/shared/cubit/states.dart';
import 'package:shoppingapp/shared/styles/themes/themes.dart';
import 'layout/home_page_layout.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized(); // this for waiting until what before runapp is going
  Bloc.observer = MyBlocObserver();
//  await CacheHelper.inite();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: AppCubit.get(context).isDark
                  ? ThemeMode.dark
                  : ThemeMode.light,
              home:  OnBoardingScreen());
        },
      ),
    );
  }
}
