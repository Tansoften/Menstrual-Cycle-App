// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:menstrual_cycle_app/constants.dart';

// import 'land.dart';

// class WelcomeDemo extends StatefulWidget {
//   WelcomeDemo({Key? key}) : super(key: key);
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   @override
//   _WelcomeDemoState createState() => _WelcomeDemoState();
// }

// class _WelcomeDemoState extends State<WelcomeDemo> {
//   TextEditingController valueCtr = TextEditingController();
//   String value = "1234";
//   String name = "John";
//   int age = 20;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Welcome Demo"),
//       ),
//       body: Center(
//         child: Container(
//           height: 400,
//           width: 200,
//           decoration: const BoxDecoration(
//             color: Colors.cyan,
//           ),
//           child: Form(
//             key: widget._formKey,
//             child: Column(
//               //mainAxisAlignment: MainAxisAlignment.,
//               children: [
//                 TextFormField(
//                   decoration: fieldDecorations,
//                   autovalidateMode: AutovalidateMode.onUserInteraction,
//                   controller: valueCtr,
//                   keyboardType: TextInputType.number,
//                   inputFormatters: [
//                     FilteringTextInputFormatter.deny(RegExp('a-zA-Z'))
//                   ],
//                   // onChanged: (val1) {
//                   //   name = val1;
//                   // },
//                   onSaved: (val) {
//                     name = val.toString();
//                   },
//                   validator: (val2) {
//                     if (val2!.length > 5) {
//                       return "Exceeded limit";
//                     } else if (val2.isEmpty) {
//                       return "This field is required.";
//                     }

//                     return null;
//                   },
//                 ),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 TextFormField(
//                   decoration: fieldDecorations,
//                   validator: (val) {
//                     if (val!.isEmpty) {
//                       return "This field is required.";
//                     }
//                   },
//                   onChanged: (val) {
//                     age = int.parse(val);
//                   },
//                   onSaved: (val) {
//                     age = int.parse(val.toString());
//                   },
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (widget._formKey.currentState!.validate()) {
//                       widget._formKey.currentState!.save();
//                       print(name);
//                       print(age);
//                     }
//                   },
//                   child: const Text("Click me"),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
