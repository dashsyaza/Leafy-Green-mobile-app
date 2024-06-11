import 'package:flutter/material.dart';
import 'package:lg/screens/home/splash_screen.dart';
// import 'package:lg/screens/home/search_screen.dart';
import 'package:lg/screens/profile/profile.dart';

// import 'package:lg/screens/offers/offers_list.dart';


import 'package:lg/screens/home/plant_list.dart';

// import '../groups/group_page.dart';

// import 'package:lg/screens/posts/create_post_screen.dart';
// import '../posts/posts_screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  get redirectTo => null;

  // final FirebaseAuth _auth = FirebaseAuth.instance;

  void _logout(BuildContext context) async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.clear();
    // await _auth.signOut();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SplashScreen()),
    );

    // Clear route history
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const SplashScreen()),
      (route) => false,
    );
  }

  // void _navigateToSearchPage(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const SearchPage()),
  //   );
  // }

  void _navigateToProfilePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const UserProfileScreen()),
    );
  }

  // void _navigateToGroupsPage(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const GroupsPage()),
  //   );
  // }

  // void _navigateToPostsPage(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const PostsScreen()),
  //   );
  // }

  // Future<bool> redirectTo() async {
  //   //exit app
  //   return true;
  // }

  // void _navigateToCreatePostScreen(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const NewPostScreen()),
  //   );
  // }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Home Page'),
      actions: [
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () => _logout(context),
        ),
        // IconButton(
        //   icon: const Icon(Icons.search),
        //   onPressed: () => _navigateToSearchPage(context),
        // ),
        IconButton(
          icon: const Icon(Icons.plus_one),
          onPressed: () => _navigateToProfilePage(context),
        ),
      ],
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      //make it blue
      selectedItemColor: const Color.fromARGB(255, 43, 114, 7),
      unselectedItemColor: const Color.fromARGB(255, 158, 158, 158),
      //make the bar color blue
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/plant_search.png',
            width: 25,
            height: 25,
          ),
          label: 'Search',
        ),
        // BottomNavigationBarItem(
        //   icon: Image.asset(
        //     'assets/images/camera.png',
        //     width: 25,
        //     height: 25,
        //   ),
        //   label: 'Blog',
        // ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/blog.png',
            width: 25,
            height: 25,
          ),
          label: 'Blog',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/vegetable.png',
            width: 25,
            height: 25,
          ),
          label: 'Vegetable',
        ),
      ],
      // onTap: (index) {
      //   if (index == 1) {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => const PlantSearchScreen()),
      //     );
      //   }
      //   if (index == 2) {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => const ImageSearchScreen()),
      //     );
      //   }
      //   if (index == 3) {
      //     _navigateToPostsPage(context);
      //   }
      //   if (index == 4) {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => const OffersList()),
      //     );
      //   }
      // },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: WillPopScope(
        onWillPop: redirectTo,
        child: const Center(
          child: Text('Hello World'),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }
}
