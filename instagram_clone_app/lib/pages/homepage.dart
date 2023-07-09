import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../tabs/homepage/home.dart';
import '../tabs/homepage/search.dart';
import '../tabs/homepage/user_post.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<void> _logOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Set the length of the tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          actions: [
            GestureDetector(
              onTap: (){},
              child: const Icon(Icons.file_upload),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: (){},
              child: const Icon(Icons.add_photo_alternate_sharp),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                _logOut(context);
                print('logouts');
              },
              child: const Icon(Icons.logout),
            ),
          ],
          bottom: const TabBar(
            // Add the TabBar widget
            tabs: [
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.search)),
              Tab(icon: Icon(Icons.home)),
            ],
          ),
        ),
        body: const TabBarView(
          // Add the TabBarView widget
          children: [
            UserPostsView(),
            SearchView(),
            HomeView(),
          ],
        ),
      ),
    );
  }
}
