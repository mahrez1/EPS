import 'package:eps/pages/create_quiz.dart';
import 'package:eps/pages/home_page.dart';
import 'package:eps/pages/profile_page.dart';
import 'package:eps/pages/widgets/custom_tab_bar.dart';
import 'package:eps/pages/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomePage(),
    Scaffold(),
    ProfilePage(),
    CreateQuiz(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> _icons = const [
    Icons.home,
    Icons.drive_file_move,
    MdiIcons.accountCircleOutline,
    Icons.mode_edit,
    MdiIcons.message,
    Icons.assignment_turned_in_outlined,
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                //color: Colors.white,
                child: CustomTabBar(
                  icons: _icons,
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                ),

      ),
    ),
    );
  }
}
