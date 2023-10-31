import 'package:flutter/material.dart';
import 'package:flutter_application_for_web/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopViewBuilder extends StatelessWidget {
  const DesktopViewBuilder({
    super.key, 
    required this.titleText, 
    required this.children});
  final String titleText;
  final List<Widget>children;
  @override
  Widget build(BuildContext context) {
   return Container(
       
       //padding: kScreenPadding,
       width: kInitWidth,
       decoration: const BoxDecoration(

                 boxShadow: [
                   BoxShadow(
                     color: Colors.black45,
                     spreadRadius: 2,
                     blurRadius: 20,
                     offset: Offset(2, 2)
                   ),
                 ]
               ),
    child: Container(
      //height: 1720,
      width: kInitWidth,
      color: Colors.white,
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Divider(thickness: 3,),
          
          Text(titleText,
          style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.displayLarge),),
          ...children,
          
          
        ],
      ),
    ),
    );
  }
}