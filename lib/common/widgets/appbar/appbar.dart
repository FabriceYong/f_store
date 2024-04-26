import 'package:f_store/utils/constants/colors.dart';
import 'package:f_store/utils/constants/sizes.dart';
import 'package:f_store/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.centerTitle = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});
  final Widget? title;
  final bool showBackArrow, centerTitle;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: FSizes.md),
      child: AppBar(
        foregroundColor: Theme.of(context).brightness == Brightness.dark
            ? FColors.light
            : FColors.dark,
        centerTitle: centerTitle,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  CupertinoIcons.back,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? FColors.light
                      : FColors.dark,
                ))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: Icon(
                      leadingIcon,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? FColors.light
                          : FColors.dark,
                    ))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(FDeviceUtils.getAppBarHeight());
}
