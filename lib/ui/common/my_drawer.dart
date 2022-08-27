import 'package:flutter/material.dart';
import 'package:learning_ui/constant/colors/colors.dart';
import 'package:learning_ui/ui/common/drawer_header.dart';
import 'package:learning_ui/ui/common/drawer_item.dart';
import 'package:learning_ui/ui/common/drawer_title.dart';
import 'package:learning_ui/ui/common/search_bar.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: MyColors.background,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const HeaderDrawer(),
              const SearchBar(),
              const DrawerItem(title: 'Inbox', count: 0, icon: Icons.download_for_offline_outlined),
              const DrawerItem(title: 'Notifications', count: 5, icon: Icons.notifications_none_rounded),
              const DrawerItem(title: 'Meetings', count: 0, icon: Icons.calendar_month),
              Container(
                color: Colors.white38,
                height: 1.0,
              ),
              const DrawerItem(title: 'Inbox', count: 0, icon: Icons.download_for_offline_outlined),
              const DrawerItem(title: 'Notifications', count: 5, icon: Icons.notifications_none_rounded),
              const DrawerItem(title: 'Meetings', count: 0, icon: Icons.calendar_month),
              const DrawerItem(title: 'Inbox', count: 0, icon: Icons.download_for_offline_outlined),
              const DrawerItem(title: 'Notifications', count: 5, icon: Icons.notifications_none_rounded),
              Container(
                color: Colors.white38,
                height: 1.0,
              ),
              const DrawerTitle(icon: Icons.settings, label: 'Settings'),
              const DrawerTitle(icon: Icons.info_rounded, label: 'About')
            ],
          ),
        )
    );
  }
}
