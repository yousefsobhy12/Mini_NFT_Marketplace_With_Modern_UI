// import 'dart:ui';
// import 'package:flutter/material.dart';

// class CustomCategoryHomePage extends StatelessWidget {
//   const CustomCategoryHomePage({super.key, required this.title, required this.image});
//   final String title;
//   final String image;
//   @override
//   Widget build(BuildContext context) {
//     return  Stack(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(26),
//           child:   Image(
//             image: AssetImage(image),
//             height: 167,
//             width: 252,
//           ),
//         ),
//         Positioned(bottom: PositionedValues.po,child: ClipRRect(
//           borderRadius: const BorderRadius.only(
//             bottomLeft: Radius.circular(26),
//             bottomRight: Radius.circular(26),
//           ),
//           child: BackdropFilter(
//             filter:ImageFilter.blur(sigmaX: BlurValues.b3,sigmaY: BlurValues.b3) ,
//             child: Container(
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           ColorManager.kColorBlack.withOpacity(0),
//                           ColorManager.kColorBlack.withOpacity(.45),
//                         ])),
//                 height: HeightValues.h45_06,
//                 width: WidthValues.w252_26,
//                 child: Text(title,style: const TextStyle(fontSize: FontSize.f19_82,fontFamily: FontMangers.sfRroDisplay,fontWeight: FontWeight.bold),)),
//           ),
//         ),)
//       ],
//     );
//   }
// }