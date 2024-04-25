import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class FTabBar extends StatelessWidget implements PreferredSizeWidget {
  // if you want to add the background color to tabs you have to wrap them in Material widget
  /// Tod do that we need [preferredSized] Widget and that's why created a custom class. [PreferredSizeWidget]
  const FTabBar({super.key, required this.tabs});

  final List<Widget> tabs;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).brightness == Brightness.dark ? FColors.black:FColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: FColors.primary,
        labelColor: Theme.of(context).brightness == Brightness.dark?FColors.white:FColors.primary,
        unselectedLabelColor: FColors.darkGrey,
        ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(FDeviceUtils.getAppBarHeight());
}
