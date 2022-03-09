import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:white_whistle/application/theme/theme_cubit.dart';
import 'package:white_whistle/domain/core/menu_tile.dart';

/// @nodoc
class HomeMenuLayout extends StatelessWidget {
  /// @nodoc
  HomeMenuLayout({Key? key}) : super(key: key);

  /// @nodoc
  final menu = [
    const MenuTile(
      key: 'characters',
      icon: Icons.people,
    ),
    const MenuTile(
      key: 'locations',
      icon: Icons.location_on,
    ),
    const MenuTile(
      key: 'worlds',
      icon: Icons.public,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: const Key('home_menu_drawer'),
      child: Scaffold(
        body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (_, i) => ListTile(
            leading: Icon(
              menu.elementAt(i).icon,
              color: Colors.black,
            ),
            title: Text(
              menu.elementAt(i).key,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                letterSpacing: .5,
              ),
            ),
          ),
        ),
        bottomNavigationBar: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return ListTile(
              leading: Icon(
                state.themeMode == ThemeMode.light
                    ? Icons.light_mode_outlined
                    : Icons.dark_mode_outlined,
                color: state.themeMode == ThemeMode.light
                    ? Colors.black
                    : Colors.white,
              ),
              title: Text(
                state.themeMode == ThemeMode.light ? 'Light Mode' : 'Dark mode',
                style: TextStyle(
                  color: state.themeMode == ThemeMode.light
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: .5,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}