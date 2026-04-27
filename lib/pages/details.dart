import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, right: 50, left: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),

            Image.asset(
              'images/salad2.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 15,),

            
            Row(
              
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Mediterranean', style: AppWidget.semiBooldTextTextFeildStyle(),),
                  Text('Chickpea Salad', style: AppWidget.boldTextFeildStyle(),),
                ],),
                Spacer(),
                Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),

                  child: Icon(Icons.remove, color: Colors.white,),
                ),
                SizedBox(width: 15,),

                Text('1', style: AppWidget.semiBooldTextTextFeildStyle(),),

                SizedBox(width: 15,),
                Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),

                  child: Icon(Icons.add, color: Colors.white,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
