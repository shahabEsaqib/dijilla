import 'package:dihillah/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:toggle_switch/toggle_switch.dart';


class AddUserAndMang extends StatefulWidget {
 

  @override
  State<AddUserAndMang> createState() => _AddUserAndMangState();
}

class _AddUserAndMangState extends State<AddUserAndMang> {
  TextEditingController searchbarCont = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
            appBar:  PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          // toolbarHeight: 10,
          elevation: 3,
          automaticallyImplyLeading: false,
        backgroundColor: Palette().maincolor,
        
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 15,bottom: 5,left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Text('Admin',style: TextStyle(color: Colors.white,fontSize: 20),),
              Text('Amar baig',style: TextStyle(color: Colors.white,fontSize: 30),),
            ],
          ),
        ),
        actions: [
            Padding(
              padding: const EdgeInsets.only(top: 32,right: 20,bottom: 10),
              child: Icon(Icons.notification_add),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 32,right: 20,bottom: 10),
              child: Icon(Icons.person),
            ),
            
          ],  
        
        ),
      ),
      
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
            child: Column(children: [
              // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
              ToggleSwitch(
                minWidth: 180,
                cornerRadius: 20.0,
                activeBgColors: [[Palette().maincolor], [Palette().maincolor]],
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey.shade200,
                inactiveFgColor: Colors.grey.shade700,
                fontSize: 20,
                
                initialLabelIndex: 0,
                totalSwitches: 2,
                labels: ['users', 'managers'],
                radiusStyle: true,
                onToggle: (index) {
                  print('switched to: $index');
                },
                ),
              SizedBox(height: 30,),
              mycard(size: size),
              SizedBox(height: 15,),
              mycard(size: size),
              SizedBox(height: 15,),
              mycard(size: size),
              SizedBox(height: 15,),
              mycard(size: size),
              SizedBox(height: size.height*.10,),
              Palette().iconButton(context, Icons.person,'Add user'),
              SizedBox(height: 15,),

              
            ]),
          ),
        ),
      ),
    );
  }
}

class mycard extends StatelessWidget {
  const mycard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .12,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade600, width: 1)
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(   
              children: [
                Image.asset('assets/profileImage.png', ),
                 Padding(
                   padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Shahab Ata',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                ),
                Text(
                    'Peshawar',
                    style: TextStyle(
                        fontSize: 14, color: Colors.grey.shade600),
                ),
                
              
              ],
            ),
                 ),
              ],
            ),
            
           Padding(
             padding: const EdgeInsets.only(right: 10),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Icon(Icons.edit),
                 Text('edit')
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
