import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sahilweb/theme/color.dart';

import '../provider/DrawerProvider.dart';
import '../theme/string.dart';

User? loggedinUser;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  void initState() {
    super.initState();
    getCurrentUser();
  }

  //using this function you can use the credentials of the user
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;

      if (user != null) {
        loggedinUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  //
  // LogOutput
  // _auth.signOut();
  // // Navigator.pop(context);
  // final prefs = await SharedPreferences.getInstance();
  // prefs.setBool(Constants.isLogin, false);
  // navigatorKey.currentState!.pushNamedAndRemoveUntil(RouteName.LoginScreen, (route) => false);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DrawerProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Admin Panel'),
        ),
        body: Center(
          child: Text('Home Page'),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/3,
            decoration: BoxDecoration(
              color: colors.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Images.avatar,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width/10,
                  height: MediaQuery.of(context).size.width/10,
                ),
                SizedBox(height: 8,),
                Text(
                  'asd@asd.asd',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Add Category'),
            onTap: () {
              // Handle item 1 click
              drawerProvider.closeDrawer();
            },
          ),
          ListTile(
            title: Text('List Category'),
            onTap: () {
              // Handle item 2 click
              drawerProvider.closeDrawer();
            },
          ),

        ],
      ),
    );
  }
}
