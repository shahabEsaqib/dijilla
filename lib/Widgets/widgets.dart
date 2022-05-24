import 'package:flutter/material.dart';

class Palette {
  final Color maincolor = Color(0xffD9B56B);
  final Color fontcolor =Color(0xff4F4F4F);

   appbar(String? title ){
    return PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Palette().maincolor,
          title:Padding(
            padding: EdgeInsets.only(left: 20,top: 32,bottom: 10),
            child: Text(title!,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
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
          elevation: 0,
        ),
      
      
      );
  }

  searchBar(TextEditingController?  controller){
    return Container(
                decoration: BoxDecoration(
                  // shape: BoxShape.rectangle,
                  color: Colors.grey.shade200,
                  border: Border.all(color: Colors.grey.shade600),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: controller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'search',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(15),
                      child: Icon(Icons.search),
                      width: 18,
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
              );
  }
  iconButton(BuildContext context, IconData icon, String text) {
    return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(16.0),
                                      color: Palette().maincolor,
                                    ),
                        child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Icon(icon,size: 30,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Text(text,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                              ),
                            ],
                        ),
                      ),
                    ),
                          );
  }

}