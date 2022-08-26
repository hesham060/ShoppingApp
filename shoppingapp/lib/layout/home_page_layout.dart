import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingapp/shared/cubit/cubit.dart';
import 'package:shoppingapp/shared/cubit/states.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Shopping App'),
           actions: [
            Icon(Icons.search),
            IconButton(
              icon: Icon(Icons.dark_mode),
              onPressed: () {
                AppCubit.get(context).ChangeThemeMode();
              },
            ),
          ]),
              floatingActionButton: FloatingActionButton(onPressed: (){
               }),         
          bottomNavigationBar: BottomNavigationBar(
            items: AppCubit.get(context).bottomItem,
            currentIndex: AppCubit.get(context).currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              AppCubit.get(context).ChangeCurrentBottomNav(index);
            },
          ),
        );
      },
    );
  }
}
