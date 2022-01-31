// import 'package:flutter/material.dart';

// class Land extends StatefulWidget {
//   Land({required this.switchScreens, Key? key}) : super(key: key);
//   Function switchScreens;

//   @override
//   _LandState createState() => _LandState();
// }

// class _LandState extends State<Land> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Land"),
//       ),
//       body: Center(
//         child: Container(
//           height: 400,
//           width: 200,
//           decoration: const BoxDecoration(
//             color: Colors.cyan,
//           ),
//           child: ElevatedButton(
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all(Colors.amber),
//               shape: MaterialStateProperty.all(const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
//               )),
//             ),
//             child: const Text("Welcome Demo"),
//             onPressed: () {
//               setState(() {
//                 widget.switchScreens();
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }


