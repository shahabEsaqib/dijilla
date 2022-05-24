import 'package:dihillah/Widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class Progresstask extends StatefulWidget {
 

  @override
  State<Progresstask> createState() => _ProgresstaskState();
}

class _ProgresstaskState extends State<Progresstask> {
  TextEditingController searchbarCont = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Palette().appbar('Progress Task'),
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
            child: Column(children: [
              Palette().searchBar(searchbarCont),
              SizedBox(height: 15,),
              mycard(size: size),
              SizedBox(height: 15,),
              mycard(size: size),
              SizedBox(height: 15,),
              mycard(size: size),
              SizedBox(height: 15,),
              mycard(size: size),
              SizedBox(height: size.height*.12,),
              Palette().iconButton(context, Icons.person,'Add user'),

              
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
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'website assign to',
                    style: TextStyle(
                        fontSize: 14, color: Colors.grey.shade600),
                ),
                Text(
                    'User1',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                ),
                Row(
                children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Start date',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '21-May-2022',
                          style:
                              TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expected date',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '25-June-2022',
                          style:
                              TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ],
                    ),
                ],
              ),

              ],
            ),
                 ),
              ],
            ),
            
            Container(
              padding: EdgeInsets.all(16),
              child: CircularPercentIndicator( //circular progress indicator
               radius: 45.0, //radius for circle
               lineWidth: 5.0, //width of circle line
              //  animation: true, //animate when it shows progress indicator first
               percent: 60/100, //vercentage value: 0.6 for 60% (60/100 = 0.6)
               center: Text("75%",style: TextStyle(
                 fontWeight: FontWeight.bold, fontSize: 12.0),
               ), //center text, you can set Icon as well
              //footer text 
               backgroundColor: Colors.grey, //backround of progress bar
               circularStrokeCap: CircularStrokeCap.round, //corner shape of progress bar at start/end
               progressColor: Colors.blue, //progress bar color
          ),
            ),
          ],
        ),
      ),
    );
  }
}
