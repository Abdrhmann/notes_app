import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
        Text(text,
        style: TextStyle(
          fontSize: 28,
        ),
      ), 
       Spacer(),
        CustomSearchIcon(icon: icon),
       ],
      );
  }
}
