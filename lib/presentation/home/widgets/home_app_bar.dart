import 'package:flutter/material.dart';
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(color: Theme.of(context).dividerColor, height: 2),
      ),
      elevation: 0,
      leading: IconButton(
        key: const Key('home_menu_button'),
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: Scaffold.of(context).openDrawer,
      ),
    );
  }
}
