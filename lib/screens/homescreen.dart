import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rewind/utils/color_utils.dart';

import 'community_screen.dart';
import 'signin_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("00FF00"),
          hexStringToColor("013220"),
          // hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20,
              MediaQuery.of(context).size.height * 0.2,
              20,
              0,
            ),
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  child: Text("Logout"),
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      print("Signed Out");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: Text("Waste Collection"),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: Text("Buy Items"),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: Text("Community"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CommunityScreen()));
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: Text("Contact "),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
        
        
        
        
        
        
        
//         child: ElevatedButton(
//           child: Text("Logout"),
//           onPressed: () {
//             FirebaseAuth.instance.signOut().then((value) {
//               print("Signed Out");
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => SignInScreen()));
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
