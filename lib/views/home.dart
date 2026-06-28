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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Menu Button
                        _circleButton(
                          Image.asset(
                            "lib/images/nav_icon.png",
                            width: 22,
                            height: 22,
                          ),
                        ),

                        Row(
                          children: [
                            // Favourite
                            _circleButton(
                              Image.asset(
                                "lib/images/fav_icons.png",
                                width: 22,
                                height: 22,
                              ),
                            ),

                            const SizedBox(width: 14),

                            // Notification
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                _circleButton(
                                  Image.asset(
                                    "lib/images/notification_icon.png",
                                    width: 22,
                                    height: 22,
                                  ),
                                ),

                                Positioned(
                                  right: -2,
                                  top: -2,
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "2",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(width: 14),

                            // Profile
                            Container(
                              height: 46,
                              width: 46,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    "lib/images/profile_icon.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    offset: Offset(0, 4),
                                  ),
                                ],
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

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome, Mypcot !!",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff536B99),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "here is your dashboard....",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff8E97B7),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.08),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.search_rounded,
                      color: Color(0xff31456A),
                      size: 34,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Padding(padding: const EdgeInsets.all(8.0), child: dashboardCard()),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Side
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "January, 23 2021",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff8C96B8),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Today",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff30456B),
                        ),
                      ),
                    ],
                  ),

                  // Right Side
                  Row(
                    children: [
                      _filterButton(
                        title: "TIMELINE",
                        icon: Icons.keyboard_arrow_down_rounded,
                      ),
                      const SizedBox(width: 12),
                      _dateButton(),
                    ],
                  ),
                ],
              ),
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

  Widget _filterButton({required String title, required IconData icon}) {
    return Container(
      height: 38,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Color(0xff435577),
            ),
          ),
          const SizedBox(width: 6),
          Icon(icon, size: 20, color: Color(0xff6A7692)),
        ],
      ),
    );
  }

  Widget _dateButton() {
    return Container(
      height: 42,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: const [
          Icon(
            Icons.calendar_today_outlined,
            size: 18,
            color: Color(0xff4C648C),
          ),
          SizedBox(width: 8),
          Text(
            "JAN, 2021",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Color(0xff435577),
            ),
          ),
        ],
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

  Widget dashboardCard() {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff25A9D8),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            /// Left Side
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("lib/images/orders.png", height: 120),

                  const SizedBox(height: 18),

                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffE86D34),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Center(
                      child: Text(
                        "Orders",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 10),

            /// Right Side
            SizedBox(
              width: 130,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(top: -30, right: 20, child: activeOrdersCard()),

                  Positioned(top: 75, right: 15, child: pendingOrdersCard()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget activeOrdersCard() {
    return Container(
      width: 130,
      height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xffF26522),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "You have ",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
                TextSpan(
                  text: "3",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " active\norders from",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: Center(
              child: SizedBox(
                width: 70,
                height: 30,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundImage: AssetImage(
                            "lib/images/profile_icon.png",
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 18,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundImage: AssetImage(
                            "lib/images/profile_icon.png",
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 36,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundImage: AssetImage(
                            "lib/images/profile_icon.png",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget pendingOrdersCard() {
    return Container(
      width: 110,
      height: 100,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "02 ",
                  style: TextStyle(
                    color: Color(0xff2D4573),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "Pending",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            "Orders from",
            style: TextStyle(color: Color(0xff2D4573), fontSize: 13),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: Center(
              child: SizedBox(
                width: 50,
                height: 30,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.red,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundImage: AssetImage(
                            "lib/images/profile_icon.png",
                          ),
                        ),
                      ),
                    ),
              
                    Positioned(
                      left: 20,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.red,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundImage: AssetImage(
                            "lib/images/profile_icon.png",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
