import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTab,  this.isLoading = false});
 final VoidCallback onTab;
 final bool isLoading;
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
         child: Center(
          child: isLoading ? SizedBox(
            height: 24, width: 24,
            child: const CircularProgressIndicator(
              color: Colors.black,
            ),
          ) : const Text('Add', 
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