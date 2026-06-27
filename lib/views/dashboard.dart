import 'package:flutter/material.dart';
import 'package:my_pcot_project/views/cus.dart';
import 'package:my_pcot_project/views/home.dart';
import 'package:my_pcot_project/views/khata.dart';
import 'package:my_pcot_project/views/orde.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

final List<Widget> screens = [
  const HomeScreen(),
  const Customers(),
  const KhataScreen(),
  const Orders(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff18374A),
        elevation: 6,
        shape: const CircleBorder(),
        onPressed: () {
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
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
              navItem(Icons.home, "Home", 0),
              navItem(Icons.people_outline, "Customers", 1),

              const SizedBox(width: 40),

              navItem(Icons.receipt_long_outlined, "Khata", 2),
              navItem(Icons.list_alt_outlined, "Orders", 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(IconData icon, String title, int index) {
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
            Icon(
              icon,
              color: selected ? const Color(0xff18374A) : Colors.grey,
              size: 24,
            ),
            const SizedBox(height: 2),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                color: selected ? const Color(0xff18374A) : Colors.grey,
                fontWeight:
                    selected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}