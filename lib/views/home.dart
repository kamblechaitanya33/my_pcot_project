import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_pcot_project/widgets/app_calender_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SafeArea(
                  child: Padding(
                    padding:   EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Menu Button
                        _circleButton(
                          Image.asset(
                            "lib/images/nav_icon.png",
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),

                        Row(
                          children: [
                            _circleButton(
                              Padding(
                                padding:   EdgeInsets.all(12),
                                child: Image.asset(
                                  "lib/images/fav_icons.png",
                                  fit: BoxFit.contain,
                                  width: 200,
                                  height: 200,
                                ),
                              ),
                            ),
                              SizedBox(width: 14),

                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                _circleButton(
                                  Padding(
                                    padding:   EdgeInsets.all(12),
                                    child: Image.asset(
                                      "lib/images/notification_icon.png",
                                      fit: BoxFit.contain,
                                      width: 200,
                                      height: 200,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    child:   Center(
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            _circleButton(
                              Padding(
                                padding:   EdgeInsets.all(0),
                                child: Image.asset(
                                  "lib/images/profile_icon.png",
                                  fit: BoxFit.contain,
                                  width: 200,
                                  height: 200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

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

            SizedBox(height: 25),

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

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    color: Colors.grey.withOpacity(.15),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                    child: Icon(
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

  Widget _circleButton(Widget icon) {
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
      child: Center(child: icon),
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
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }

  Widget _pendingCard() {
    return Container(
      width: 145,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
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
