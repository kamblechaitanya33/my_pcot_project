import 'package:flutter/material.dart';
import 'package:my_pcot_project/views/cus.dart';
import 'package:my_pcot_project/views/home.dart';
import 'package:my_pcot_project/views/khata.dart';
import 'package:my_pcot_project/views/orde.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    Customers(),
    KhataScreen(),
    Orders(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff18374A),
        elevation: 6,
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        elevation: 8,
        child: SizedBox(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              navItem("lib/images/home_icon.png", "Home", 0),

              navItem("lib/images/customers.png", "Customers", 1),

              const SizedBox(width: 40),

              navItem("lib/images/khata.png", "Khata", 2),

              navItem("lib/images/orders_icon.png", "Orders", 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(String imagePath, String title, int index) {
    final bool selected = currentIndex == index;

    return InkWell(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: SizedBox(
        width: 65,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 24,
              height: 24,
              color: selected ? const Color(0xff18374A) : Colors.grey,
            ),

            const SizedBox(height: 4),

            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                color: selected ? const Color(0xff18374A) : Colors.grey,
                fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
