import 'package:dihillah/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class ManagerHome extends StatefulWidget {
  const ManagerHome({ Key? key }) : super(key: key);

  @override
  State<ManagerHome> createState() => _ManagerHomeState();
}

class _ManagerHomeState extends State<ManagerHome> with SingleTickerProviderStateMixin{
  // final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0; //default index of a first screen

  late AnimationController _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  final iconList = <IconData>[
    Icons.menu,
    Icons.email,
  ];


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
         floatingActionButton: Container(
           height: 85,
           width: 85,
           decoration: BoxDecoration(
             color: Palette().maincolor,
             borderRadius: BorderRadius.circular(150), 
             ),
           child: Icon(Icons.home, color: Colors.white, size: 40,),
      //params
   ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   bottomNavigationBar: AnimatedBottomNavigationBar(
     backgroundColor: Palette().maincolor,
     height: 60,
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
     
        body: Container(
          width: size.width,
          height: size.height,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi",style: TextStyle(color: Palette().fontcolor,fontSize: 25,fontWeight: FontWeight.bold),),
                Text("Manager",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                Text('You have 6 task\n to review',style: TextStyle(color: Palette().fontcolor,fontSize: 15,fontWeight: FontWeight.bold)),
                SizedBox(height: 10,),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.grey.shade600),
                        borderRadius: BorderRadius.circular(8),
                      ),
                  child: Center(child: Text("All task",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold))),
                ),
                // SizedBox(height: 10,),
                Palette().iconButton(context, Icons.add, 'Create task'),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: reviewBox(Color(0xffFF6161),'10','Pending'),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 2,
                      child: reviewBox(Color(0xff6498FF), '6', 'review'),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                 Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: reviewBox(Color(0xffFFB164),'10','In progress'),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 2,
                      child: reviewBox(Color(0xff64FF64), '8', 'Complete'),
                    )
                  ],
                ),
                SizedBox(height: 10,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Palette().maincolor,
                        // border: Border.all(color: Colors.grey.shade600),
                        borderRadius: BorderRadius.circular(8),
                      ),
                  child: Center(child: Text("Task by user",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold))),
                ),
                
              ],
            ),
          ),
        ),
        
      ),
    );
  }

  Container reviewBox(Color color, String string1, String string2) {
    return Container(
                      height: 170,
                      // color: Colors.amber,
                      decoration:BoxDecoration(
                        color: color,
                       borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(string1,style: TextStyle(color: Colors.white,fontSize: 70,fontWeight: FontWeight.bold),),
                            Text(string2,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    );
  }
}