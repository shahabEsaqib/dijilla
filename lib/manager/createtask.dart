import 'package:dihillah/Widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar:Palette().appbar("Create Task"),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 8),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Task name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                
                Padding(
                    padding: EdgeInsets.symmetric( vertical: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
              
                            ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        
                        // contentPadding: EdgeInsets.all(16.0),
                        prefixIcon: Icon(Icons.minimize,color: Color(0xfffBABABA),)
                      ),
                      
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Start',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                      
                            Padding(
                                  padding: EdgeInsets.symmetric( vertical: 10.0),
                                  child: Container(
                                    // width: MediaQuery.of(context).size.width/2.5,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.shade200,
                                      border: Border.all(color: Colors.grey.shade600),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('Date',style: TextStyle(color: Colors.grey.shade700,fontSize: 18),),
                                        Text('(system)',style: TextStyle(color: Colors.grey.shade700,fontSize: 18),),
                                      ],
                                    )
                                  ),
                                ),                    ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('expecting date',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                      
                              Padding(
                                  padding: EdgeInsets.symmetric( vertical: 10.0),
                                  child: Container(
                                    // width: MediaQuery.of(context).size.width/2.3,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.grey.shade200,
                                      border: Border.all(color: Colors.grey.shade600),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text('Calender',style: TextStyle(color: Colors.grey.shade700,fontSize: 18),),
                                        Icon(Icons.calendar_month,)
                                      ],
                                    )
                                  ),
                                ),
                          
                          ],
                        ),
                      )
                    ],
                  ),
                  Text('Particpate',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Palette().maincolor,
                        // border: Border.all(color: Colors.grey.shade600),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                        child:Icon(Icons.add,color: Colors.white,size: 30)
                      ),
                      SizedBox(
                        width: 10,
                      ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                padding: EdgeInsets.symmetric( vertical: 10.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/2.7,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.shade200,
                                    border: Border.all(color: Colors.grey.shade600),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.person,),
                                     
                                      Icon(Icons.close,)
                                    ],
                                  )
                                ),
                                                          ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                             Expanded(
                               flex:1,
                               child: Padding(
                                padding: EdgeInsets.symmetric( vertical: 10.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/3.1,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.shade200,
                                    border: Border.all(color: Colors.grey.shade600),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.person,),
                                     
                                      Icon(Icons.close,)
                                    ],
                                  )
                                ),
                                                         ),
                             ),
                      
                    ],
                  ),
                  Text('Task priority',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                   Padding(
                                padding: EdgeInsets.symmetric( vertical: 10.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.shade200,
                                    border: Border.all(color: Colors.grey.shade600),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Text('High',style: TextStyle(color: Colors.grey.shade700,fontSize: 18)),
                                      ),
                                     
                                      Padding(
                                        padding: const EdgeInsets.only(right: 15),
                                        child: Icon(Icons.close),
                                      ),
                                    ],
                                  )
                                ),
                              ),
                              Text('Discription',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                              Padding(
                                padding: EdgeInsets.symmetric( vertical: 10.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.grey.shade200,
                                    border: Border.all(color: Colors.grey.shade600),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child:TextField(
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 5,
                                    maxLength: 5000,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  )
                                ),
                              ), 
                              Text('Attach',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                            Row(
                              children: [
                                Padding(
                                    padding: EdgeInsets.symmetric( vertical: 10.0,),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width*.72,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Colors.grey.shade200,
                                        border: Border.all(color: Colors.grey.shade600),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                       
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15),
                                            child: Icon(Icons.attachment),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15),
                                            child: Text('Add an attachment',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                                          ),
                                          
                                          
                                        ],
                                      )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Palette().maincolor,
                                    // border: Border.all(color: Colors.grey.shade600),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                    child:Icon(Icons.camera_alt,color: Colors.white,size: 30)
                                  ),
                                  ),
                              ],
                            ),
                            Palette().iconButton(context, Icons.add, 'Create task' ),
              ],
              
            ),
          ),
        ),
      ),
      
    );
  }


}