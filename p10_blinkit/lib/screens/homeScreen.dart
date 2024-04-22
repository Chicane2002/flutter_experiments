// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:p10_blinkit/Shared/bannerStack.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(children: [
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: const TextField(
//               decoration: InputDecoration(
//                   hintText: 'Search for "sugar"',
//                   fillColor: Color.fromARGB(255, 132, 132, 132),
//                   filled: true,
//                   prefixIcon: Icon(Icons.search),
//                   suffixIcon: Icon(Icons.mic),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(20)))),
//             ),
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.15,
//             width: MediaQuery.of(context).size.width * 0.65,
//           ),
//           Container(
//             height: MediaQuery.of(context).size.height * 0.35,
//             width: MediaQuery.of(context).size.width * 0.65,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Container(
//                     height: MediaQuery.of(context).size.height * 025,
//                     width: MediaQuery.of(context).size.height * 0.55,
//                     child: bStack(
//                       bannerheading: 'Hair Oils for\n Long and Thick hair',
//                       s1: 'Explore the Parachute advanced range',
//                       img: 'assets/hiarbottle.png',
//                     )),
//                 // Container(
//                 //     child: bStack(
//                 //   bannerheading: 'Hair Oils for\n Long and Thick hair',
//                 //   s1: 'Explore the Parachute advanced range',
//                 //   img: '',
//                 // )),
//                 // Container(
//                 //     child: bStack(
//                 //   bannerheading: '\n Long and Thick hair',
//                 //   s1: 'Explore the Parachute advanced range',
//                 //   img: '',
//                 // )),
//               ],
//             ),
//           )
//         ]),
//       ),
//     );
//   }
// }
