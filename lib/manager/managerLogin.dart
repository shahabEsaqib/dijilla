import 'package:dihillah/Widgets/widgets.dart';
import 'package:dihillah/manager/createtask.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class ManagerLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 70, 30, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
                    SizedBox(height: 30,),
              Text('Welcome',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
              Text('Manager',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Palette().maincolor,),),
              Text('Login back into your account',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
              SizedBox(height: 50,),
              Text('Username',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              Padding(
                      padding: EdgeInsets.symmetric( vertical: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: 'Type your username',
                          // contentPadding: EdgeInsets.all(16.0),
                          prefixIcon: Icon(Icons.person,color: Colors.grey,)
                        ),
                        
                      ),
                    ),
                    Text('Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              Padding(
                      padding: EdgeInsets.symmetric( vertical: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          hintText: 'Type your Password',
                          // contentPadding: EdgeInsets.all(16.0),
                          prefixIcon: Icon(Icons.lock,color: Colors.grey,)
                        ),
                        
                        
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('Forgot Password?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Palette().maincolor, // Background color
                            ),
                          child: Text('Login'),
                          onPressed: () {
                             Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => CreateTask()));
                          },
                        ),
                      ),
            
            ],
          ),
        ),
      ),
    );
  }
}