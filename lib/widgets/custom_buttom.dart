import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTab});
 final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: onTab,
      child: Container(
         height: 55,
         width: MediaQuery.of(context).size.width ,
         decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
         ),
         child: const Center(
          child: Text('Add', 
           style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
           ),
          ),
        ),
      ),
    );
  }
}