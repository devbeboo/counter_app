import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
   CustomElevatedButton({super.key});

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
   late String name;

  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(style: ElevatedButton.styleFrom(
        primary :  Colors.orange,
        //fixedSize: Size(100  , 50)
        minimumSize:Size(160, 60)  ),
      onPressed: (){}, child:Text(name,style: TextStyle(fontSize: 24,color: Colors.black),), );

  }
}
