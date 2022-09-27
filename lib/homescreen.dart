import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SizedBox.expand(
        child: PageView(

          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(color: Colors.white,),
            Container(color: Colors.white,),
            Container(color: Colors.white,),
            Container(color: Colors.white,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        showElevation: false, // use this to remove appBar's elevation
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: const Text('Home',style: TextStyle(color: Colors.black54),),
              icon: const Icon(Icons.home,color: Colors.black54,),
              activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
              title: const Text('shop',style: TextStyle(color: Colors.black54),),
              icon: const Icon(Icons.shopping_cart_rounded,color: Colors.black54,),
              activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
              title: const Text('Item',style: TextStyle(color: Colors.black54),),
              icon: const Icon(Icons.scale,color: Colors.black54,),
              activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
              title: const Text('Settings',style: TextStyle(color: Colors.black54),),
              icon: const Icon(Icons.settings,color: Colors.black54,),
              activeColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
