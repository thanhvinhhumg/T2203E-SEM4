import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:session_34/first_page.dart';
import 'package:session_34/form_example.dart';
import 'package:session_34/grid_view_example.dart';
import 'package:session_34/list_student.dart';
import 'package:session_34/stack_example.dart';
import 'package:session_34/tabbar_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "This is appbar",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            backgroundColor: Colors.blue.withOpacity(0.8),
          ),
          body: IndexedStack(
            index: _currentIndex,
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp4rN33PyWHKh1AnV91DHPLsB-t-FEAjS2eA&usqp=CAU"),
              TabBarExample(),
              GridViewExample(),
              FirstPage(),
            ],
          )
          ,
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            items: [
              SalomonBottomBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
              ),
              SalomonBottomBarItem(
                  icon: Icon(Icons.search),
                  title: Text("Search")
              ),
              SalomonBottomBarItem(
                  icon: Icon(Icons.settings),
                  title: Text("Setting")
              ),
              SalomonBottomBarItem(
                  icon: Icon(Icons.settings),
                  title: Text("stack")
              )
            ],
          ),
        ),
      ),
    );
  }
}
