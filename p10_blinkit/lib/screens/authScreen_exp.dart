// import 'package:flutter/material.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   bool isPasswordShow = false;

//   TextEditingController _emailcont = TextEditingController();
//   TextEditingController _pwdcont = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Form(
//             child: Column(
//           children: [
//             tFormField(
//               t: 'Email',
//               pIcon: Icons.search,
//               sIcon: Icons.clear,
//               func: clear(),

//             ),
//             tFormField(
//                 t: 'Password',
//                 pIcon: Icons.password,
//                 sIcon: Icons.visibility,
//                 func: ShowPwd()),
//             //        tFormField(t: 'Email', pIcon: Icons.search, sIcon: Icons.clear),
//             OutlinedButton(onPressed: () {}, child: Text('Accept'))
//           ],
//         )),
//       ),
//     );
//   }

//   TextFormField tFormField(String t, IconData pIcon, IconData sIcon,
//       {Function func = n()}) {
//     return TextFormField(
//       obscureText: isPasswordShow,
//       obscuringCharacter: '#',
//       validator: (value) {
//         return null;
//       },
//       decoration: InputDecoration(
//         prefixIcon: Icon(pIcon),
//         suffixIcon: GestureDetector(
//             onTap: () {
//               func();
//               setState(() {});
//             },
//             child: Icon(sIcon)),
//         filled: true,
//         fillColor: Color.fromARGB(255, 246, 212, 111),
//         hintText: t,
//         hintStyle: TextStyle(color: Color.fromARGB(255, 12, 12, 12)),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.elliptical(20, 10)),
//         ),
//       ),
//     );
//   }

//   // clear() {
//   //   this.t = '';
//   // }

//   n() {}

//   ShowPwd() {
//     isPasswordShow = !isPasswordShow;
//   }
// }
