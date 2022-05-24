import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dihillah/Widgets/widgets.dart';
import 'package:flutter/material.dart';

class Messeges extends StatefulWidget {
  

  @override
  State<Messeges> createState() => _MessegesState();
}

class _MessegesState extends State<Messeges> {
  var _bottomNavIndex = 0; //default index of a first screen

  late AnimationController _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  final iconList = <IconData>[
    Icons.menu,
    Icons.email,
  ];
  TextEditingController messegeSearchCont = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Container(
           height: 90,
           width: 90,
           decoration: BoxDecoration(
             color: Palette().maincolor,
             borderRadius: BorderRadius.circular(150) 
             ),
           child: Icon(Icons.home, color: Colors.white, size: 40,),
      //params
   ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   bottomNavigationBar: AnimatedBottomNavigationBar(
     backgroundColor: Palette().maincolor,
     height: 70,
      splashColor: Colors.white,
      icons: iconList,
      iconSize: 35,
      activeColor: Colors.white,
      inactiveColor: Colors.white,
      activeIndex: _bottomNavIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      onTap: (index) => setState(() => _bottomNavIndex = index),
      //other params
   ),
      appBar: Palette().appbar('messeges'),
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
            child: Column(
              children: [
                Palette().searchBar(messegeSearchCont),
                SizedBox(height: 20,),
                UserMesseges(),
                Divider(
                  height: 1,
                  color: Colors.black,
                ),
                UserMesseges(),
                Divider(
                  height: 1,
                  color: Colors.black,
                ),
                UserMesseges(),
                Divider(
                  height: 1,
                  color: Colors.black,
                ),
                UserMesseges(),
                Divider(
                  height: 1,
                  color: Colors.black,
                ),
                UserMesseges(),
                Divider(
                  height: 1,
                  color: Colors.black,
                ),
                UserMesseges(),
                Divider(
                  height: 1,
                  color: Colors.black,
                ),

                
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}

class UserMesseges extends StatelessWidget {
  const UserMesseges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4,bottom: 4),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 2),
      leading: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 30,
        backgroundImage: AssetImage('assets/profileImage.png',),
        child: GestureDetector(onTap: () {}),
        ),
        title: Text('User 1',style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.w600),),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut',style: TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontWeight: FontWeight.w400),),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(top:20,bottom: 20),
          child: Text('09:21 pm',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
        ),
              ),
    );
  }
}