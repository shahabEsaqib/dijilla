import 'package:dihillah/Widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final double profileheight = 144;
    final double coverHeight = 150;
    return Scaffold(
      body: ListView(
        children: [

       Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
             Container(
               margin: EdgeInsets.only(bottom: 80),
            height: coverHeight,
            color: Palette().maincolor,
          ),

          Positioned(
            top: 20,
            left: 20,
            child: Icon(Icons.arrow_back,color: Colors.white,)),
          Positioned(
            top: coverHeight - profileheight/2 ,
            child: Container(
             decoration: BoxDecoration(
               color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(120))
            ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                  border: Border.all(
                    width: 6,
                    color: Colors.grey.shade400,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(120))
                ),
                  child: CircleAvatar(
                    
                    radius: profileheight/2,
                    // backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/profileImage.png'),
                  ),
                ),
              ),
            ),
          ),
          
          ],

          
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Center(child: Text('Shahab Ata',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Palette().fontcolor),)),
                SizedBox(height: 0,),
                Center(child: Text('Peshawar',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey.shade600),)),
                SizedBox(height: 16,),
                Divider(
                  indent: 40,
                  endIndent: 40,
                  color: Colors.grey.shade500,
                  thickness: 2,
                ),
                SizedBox(height: 20
                ,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',style: TextStyle(color: Palette().fontcolor,fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 20,),
                    Text('+92311 1111 111',style: TextStyle(color: Palette().fontcolor,fontSize: 16,fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 20,),
                    Text('shahab.sk708@gmail.com',style: TextStyle(color: Palette().fontcolor,fontSize: 16,fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 20,),
                    Text('xyz, Peshawar, Khyber Pakhtunkhwa',style: TextStyle(color: Palette().fontcolor,fontSize: 16,fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook),
                    Icon(Icons.whatsapp_sharp,color: Colors.black,),

                   
                  ],
                ),
                
                SizedBox(height: 40,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Palette().maincolor,
                        // border: Border.all(color: Colors.grey.shade600),
                        borderRadius: BorderRadius.circular(8),
                      ),
                  child: Center(child: Text("send notificaiton",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.black,
                          // border: Border.all(color: Colors.grey.shade600),
                          borderRadius: BorderRadius.circular(8),
                        ),
                                      child: Center(child: Text("Change Password",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold))),
                                    ),
                    ),
                SizedBox(width: 10,),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.red,
                          // border: Border.all(color: Colors.grey.shade600),
                          borderRadius: BorderRadius.circular(8),
                        ),
                    child: Center(child: Text("Phase",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold))),
                  ),
                ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}