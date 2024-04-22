// import 'package:flutter/material.dart';

// class bStack extends StatefulWidget {
//   String? img1;
//   String? bannerheading1;
//   String? s1;
//   bStack({super.key, required img, required bannerheading, required s1});

//   @override
//   State<bStack> createState() => _bStackState();
// }

// class _bStackState extends State<bStack> {
//   // String? img;
//   // String? bannerheading;
//   // String? s1;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Image.asset(
//           'assets/$widget.img',
//         ),
//         Column(
//           children: [
//             Positioned(
//               left: 10,
//               child: Text.rich(TextSpan(children: [
//                 TextSpan(
//                     text: widget.bannerheading,
//                     style:
//                         TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                 TextSpan(text: widget.s1, style: TextStyle(fontSize: 14))
//               ])),
//             ),
//             TextButton(onPressed: () {}, child: Text("Shop now"))
//           ],
//         )
//       ],
//     );
//   }
// }
