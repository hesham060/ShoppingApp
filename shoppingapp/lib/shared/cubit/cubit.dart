import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingapp/shared/cubit/states.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  List<BottomNavigationBarItem> bottomItem = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.shop),
      label: 'shopping',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shop_two),
      label: 'pay',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_bag_rounded),
      label: 'fund',
    ),
  ];

  int currentIndex = 0;

  void ChangeCurrentBottomNav(index) {
    currentIndex = index;
    emit(AppChangeIndexBottomNavBar());
  }

  bool isDark = false;
  void ChangeThemeMode() {
    isDark = !isDark;
    emit(AppChangeThemeMode());
    // CacheHelper.putData(key: 'isDark', value: isDark).then((value) {
      
      
    // });
  }
}
