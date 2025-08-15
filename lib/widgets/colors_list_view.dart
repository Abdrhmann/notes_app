import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
   final bool isActive;
   final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive? 
     CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
       child: CircleAvatar(
        backgroundColor: color,
        radius: 34,
         ),
     ) 
       :  CircleAvatar(
      backgroundColor: color,
      radius: 38,
    );
  }
}
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List <Color>  colors = [
      Color(0xff222E50),
      Color(0xff007991),
      Color(0xff439A86),
      Color(0xffE9D985),
      Color(0xffDDE0BD),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
           return Padding(
             padding:  EdgeInsets.symmetric(horizontal: 6),
             child:  GestureDetector(
               onTap: () {
                   currentIndex = index;
                   setState(() { });
               },
               child: ColorItem( 
                isActive: currentIndex == index, 
                color: colors[index],
                ),
             ),
           );
        },
        ),
    );
  }
}