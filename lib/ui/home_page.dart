import 'package:flutter/material.dart';
import 'package:learning_ui/constant/colors/colors.dart';
import 'package:learning_ui/constant/styles_text.dart';
import 'package:learning_ui/demo_database/query_data.dart';
import 'package:learning_ui/ui/common/header_bar.dart';
import 'package:learning_ui/ui/common/my_drawer.dart';
import 'package:learning_ui/ui/common/my_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentID = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.background,
      endDrawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 8.0),
                const HeaderBar(),
                const SizedBox(height: 24.0),
                const MyImage(),
                const SizedBox(height: 24.0),
                Row(
                  children: const [
                    Text(
                      'Suggestion game',
                      style: MyTextStyles.h1,
                    ),
                    Expanded(child: SizedBox())
                  ],
                ),
                const SizedBox(height: 24.0),
                SizedBox(
                  height: size.height / 3.5,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return QueryData.games[index];
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: MyColors.nonActive,
        selectedItemColor: MyColors.active,
        backgroundColor: MyColors.navigationBarBackground,
        showUnselectedLabels: true,
        currentIndex: currentID,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentID = index;
          });
        },
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profit')
        ],
      ),
    );
  }
}
