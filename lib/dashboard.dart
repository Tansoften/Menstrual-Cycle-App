import 'package:flutter/material.dart';
import 'package:menstrual_cycle_app/about/about.dart';
import 'package:menstrual_cycle_app/algorithms/nextmenstruation.dart';
import 'package:menstrual_cycle_app/cal.dart';
//import 'package:menstrual_cycle_app/links.dart';
import 'package:menstrual_cycle_app/main.dart';
import 'package:menstrual_cycle_app/storage/calendar_file.dart';
import 'addnotes/addnote.dart';
import 'constants.dart';
import 'settings/settings.dart';
import 'share/share.dart';
//import 'dart:convert';
//import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({required this.title, Key? key}) : super(key: key);

  String get myAppTitle => "Digital Cal";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text(
          myAppTitle,
          style: textStyle.copyWith(
            color: Colors.redAccent,
            fontSize: 30,
          ),
        ),
      ),

/*+++++++++++++++++++++++++End of Application Bar+++++++++++++++++++++++++++++*/

      //body text
      body: Column(
        children: [
          Text(
            "20 days to UE ",
            textAlign: TextAlign.center,
            style: textStyle.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
              fontSize: 30,
              height: 1.5,
              fontStyle: FontStyle.italic,
            ),
          ),

          // call class calendar from its class
          const MyCalendar(),
          const StorageFile()
        ],
      ),

      /*drawer */
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'UE menu',
                textAlign: TextAlign.center,
                style: textStyle.copyWith(
                  fontSize: 50,
                  color: Colors.black54,
                ),
              ),
            ),
/*_____________________________________________________________________________
|                                                                              |
|                     Icons with their names                                   |    
|_____________________________________________________________________________*/

/*+++++++++++++++++ Home Icon +++++++++++++++ */
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
              leading: const Icon(
                Icons.home,
                size: 30,
              ),
              title: Text(
                'Home',
                style: textStyle.copyWith(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
            ),

/*++++++++++++++++++++ settings icon ++++++++++++++++++++*/
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Settings(),
                  ),
                );
              },
              leading: const Icon(
                Icons.settings_outlined,
                size: 30,
              ),
              title: Text(
                'Settings',
                style: textStyle.copyWith(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
            ),

/*++++++++++++++++++++++++ add note +++++++++++++++++++*/
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddNote(),
                  ),
                );
              },
              leading: const Icon(
                Icons.post_add_rounded,
                size: 30,
              ),
              title: Text(
                'Add a note',
                style: textStyle.copyWith(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
            ),

/*+++++++++++++++++++ About icon +++++++++++++++++++++*/
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const About(),
                  ),
                );
              },
              leading: const Icon(
                Icons.people_alt_rounded,
                size: 30,
              ),
              title: Text(
                'About',
                style: textStyle.copyWith(
                  fontSize: 20,
                  color: const Color.fromRGBO(135, 135, 147, 100),
                ),
              ),
            ),

/*++++++++++++++++++++++ share icon +++++++++++++++++++*/
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Share(),
                  ),
                );
              },
              leading: const Icon(
                Icons.share_sharp,
                size: 30,
              ),
              title: Text(
                'Share ',
                style: textStyle.copyWith(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
            ),

/*+++++++++++++++++++++++ Logout icon +++++++++++++++++++++++*/
            ListTile(
              leading: const Icon(
                Icons.logout_sharp,
                size: 30,
              ),
              title: Text(
                'Log out',
                style: textStyle.copyWith(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              // onTap: () async {
              //   Map<String, dynamic> body = {
              //     'name': 'yona',
              //     'age': 18,
              //   };

              // var url = Uri.parse(link);
              // var response = await http.post(url, body: json.encode(body));
              // print(response.body);
              //},
            ),
          ],
        ),
      ),
    );
  }
}
