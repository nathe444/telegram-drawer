import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(children: [CustomOrient()]),),));
  }
}
class CustomOrient extends StatelessWidget {
  const CustomOrient({super.key});
  @override
  Widget build(BuildContext context) {
    Orientation _orient = MediaQuery.of(context).orientation;
    return _orient == Orientation.portrait ?
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){}, 
        child: Text('Submit',
        style: TextStyle(
          fontSize: 40.0
        ),
        ),),
        SizedBox(height: 60.0,),
        ElevatedButton(onPressed: (){}, 
        child: Text('Cancel',style: TextStyle(
          fontSize: 40.0
        ),)),
      ],
    ) 
    : Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){}, child: Text('Submit', style: TextStyle(
          fontSize: 40.0
        ),)),
        SizedBox(height: 60.0,),
        ElevatedButton(onPressed: (){}, child: Text('Cancel', style: TextStyle(
          fontSize: 40.0
        ),)),
      ],
      );
  }
}
