import 'package:cambridgedictionary_try/enums/profile_menu_actions.dart';
import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileItemInfo {
  Icon icon;
  Text text;
  ProfileMenuAction action;
  bool Function() canShow;

  ProfileItemInfo(this.icon, this.text, this.action, this.canShow);
}

class ProfileButton extends StatefulWidget {
  const ProfileButton({super.key});

  @override
  State<ProfileButton> createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  final bool _isRegistered = false;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ProfileMenuAction>(
      icon: const Icon(
        Icons.account_circle_outlined,
      ),
      offset: Offset(1.0.h, 1.0.h),
      shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(2.0.h),
        bottomRight: Radius.circular(2.0.h),
        topLeft: Radius.circular(2.0.h),
        topRight: Radius.circular(2.0.h),
      )),
      itemBuilder: (context) {
        return [
          ProfileItemInfo(
            const Icon(Icons.login),
            const Text('Sign in'),
            ProfileMenuAction.login,
            () => !_isRegistered,
          ),
          ProfileItemInfo(
            const Icon(Icons.settings),
            const Text('Settings'),
            ProfileMenuAction.settings,
            () => _isRegistered,
          ),
          ProfileItemInfo(
            const Icon(Icons.exit_to_app),
            const Text('Sign out'),
            ProfileMenuAction.logout,
            () => _isRegistered,
          ),
        ]
            .where((itemInfo) => itemInfo.canShow())
            .map((itemInfo) => PopupMenuItem<ProfileMenuAction>(
                  value: itemInfo.action,
                  child: itemInfo.text,
                ))
            .toList();
      },
      onSelected: (value) {
        switch (value) {
          case ProfileMenuAction.login:
            break;
          case ProfileMenuAction.settings:
            break;
          case ProfileMenuAction.logout:
            break;
        }
      },
    );
  }
}