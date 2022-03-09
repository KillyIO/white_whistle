import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:white_whistle/application/theme/theme_cubit.dart';
import 'package:white_whistle/utils/constants/core.dart';

/// @nodoc
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// @nodoc
  const HomeAppBar({
    Key? key,
    this.preferredSize = const Size.fromHeight(defaultAppBarHeight),
  }) : super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(color: Colors.black, height: 2),
      ),
      elevation: 0,
      leading: IconButton(
        key: const Key('home_menu_button'),
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: Scaffold.of(context).openDrawer,
      ),
    );
  }
}
