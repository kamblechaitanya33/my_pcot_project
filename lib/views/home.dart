import 'package:flutter/material.dart';
import 'package:my_pcot_project/widgets/app_calender_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                _circleButton(Icons.menu),
                const Spacer(),
                _circleButton(Icons.favorite_border),
                const SizedBox(width: 12),
                Stack(
                  children: [
                    _circleButton(Icons.notifications_none),
                    Positioned(
                      right: 4,
                      top: 4,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage("https://i.pravatar.cc/150"),
                ),
              ],
            ),
        
            const SizedBox(height: 30),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome, Mypcot !!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Color(0xff536B99),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Here is your dashboard....",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
        
            const SizedBox(height: 25),
        
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(color: Colors.amber),
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "January 23 2021",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Today",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Color(0xff536B99),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        
            ApplicationCalendarWidget(),
        
        
            const SizedBox(height: 20),
        
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(blurRadius: 15, color: Colors.grey.withOpacity(.15)),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "New order created",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "New Order created with Order",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "09:00 AM",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.deepOrange.withOpacity(.15),
                    child: const Icon(
                      Icons.shopping_bag,
                      color: Colors.deepOrange,
                      size: 34,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _circleButton(IconData icon) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(blurRadius: 10, color: Colors.grey.withOpacity(.2)),
        ],
      ),
      child: Icon(icon, color: Colors.indigo),
    );
  }

  Widget _bottomItem(IconData icon, String text, bool selected) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: selected ? Colors.indigo : Colors.grey),
        Text(
          text,
          style: TextStyle(
            color: selected ? Colors.indigo : Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _infoCard(Color color, String text, bool top) {
    return Container(
      width: 145,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _pendingCard() {
    return Container(
      width: 145,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "02",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff2F477A),
            ),
          ),
          Text("Pending Orders", style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
