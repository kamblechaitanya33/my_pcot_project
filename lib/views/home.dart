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
                Expanded(
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Container(
                        height: 64,
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(0, 255, 255, 255),
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(
                                0,
                                0,
                                0,
                                0,
                              ).withOpacity(0.08),
                              blurRadius: 18,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _circleButton(
                              Image.asset(
                                "lib/images/nav_icon.png",
                                width: 20,
                                height: 20,
                              ),
                            ),

                            Row(
                              children: [
                                _circleButton(
                                  Image.asset(
                                    "lib/images/fav_icons.png",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),

                                SizedBox(width: 12),

                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    _circleButton(
                                      Image.asset(
                                        "lib/images/notification_icon.png",
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),

                                    Positioned(
                                      right: -2,
                                      top: -2,
                                      child: Container(
                                        width: 17,
                                        height: 17,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 2,
                                          ),
                                        ),
                                        child: Center(
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

                                SizedBox(width: 12),

                                Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "lib/images/profile_icon.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.08),
                                        blurRadius: 8,
                                        offset: Offset(0, 3),
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
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      color: Color(0xff31456A),
                      size: 34,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            SizedBox(
              height: 270,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 12),
                    dashboardCard(),
                    SizedBox(width: 16),
                    customerDashboardCard(),
                    SizedBox(width: 16),
                    subscriptionDashboardCard(),
                    SizedBox(width: 12),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                  ),

                    SizedBox(width: 12),

                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: SizedBox(
                      width: 220,
                      child: Row(
                        children: [
                          Expanded(
                            child: _filterButton(
                              title: "TIMELINE",
                              icon: Icons.keyboard_arrow_down_rounded,
                            ),
                          ),
                            SizedBox(width: 8),
                          Expanded(child: _dateButton()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            ApplicationCalendarWidget(),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
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
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _filterButton({required String title, required IconData icon}) {
    return Container(
      height: 38,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 15,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Color(0xff435577),
            ),
          ),
          SizedBox(width: 10),
          Icon(icon, size: 20, color: Color(0xff6A7692)),
        ],
      ),
    );
  }

  Widget _dateButton() {
    return Container(
      height: 42,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 15,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.calendar_today_outlined,
            size: 16,
            color: Color(0xff4C648C),
          ),
          SizedBox(width: 6),
          Flexible(
            child: Text(
              "JAN, 2021",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xff435577),
              ),
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
  
  Widget dashboardCard() {
    return Container(
      height: 220,
      width: 360,
      decoration: BoxDecoration(
        color: Color(0xff25A9D8),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("lib/images/orders.png", height: 120),
                  SizedBox(height: 18),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffE86D34),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Orders",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(width: 10),

            SizedBox(
              width: 140,
              height: 180,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -30,
                    right: 10,
                    child: SizedBox(
                      width: 130,
                      height: 110,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 130,
                            height: 90,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffF26522),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "You have ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
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
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            top: 70,
                            left: 25,
                            child: SizedBox(
                              width: 70,
                              height: 30,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: List.generate(
                                  3,
                                  (index) => Positioned(
                                    left: index * 18.0,
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
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 75,
                    right: 15,
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 110,
                            height: 90,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
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
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 5),

                                Text(
                                  "Orders from",
                                  style: TextStyle(
                                    color: Color(0xff2D4573),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Positioned(
                            top: 80,
                            left: 25,
                            child: SizedBox(
                              width: 55,
                              height: 30,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: List.generate(
                                  2,
                                  (index) => Positioned(
                                    left: index * 20.0,
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
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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

  Widget customerDashboardCard() {
    return Container(
      height: 220,
      width: 360,
      decoration: BoxDecoration(
        color: Color(0xff07C97B),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("lib/images/img1.png", height: 120),
                  SizedBox(height: 18),
                  Container(
                    width: 130,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffFF0066),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "View Customers",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(width: 12),

            SizedBox(
              width: 150,
              height: 180,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -28,
                    right: 12,
                    child: SizedBox(
                      width: 118,
                      height: 82,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 118,
                            height: 72,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffFF0058),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "15 ",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "New customers",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Positioned(
                            top: 85,
                            right: -20,
                            child: Container(
                              width: 110,
                              height: 70,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.08),
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "1.8%",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff274472),
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_upward,
                                        color: Colors.green,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Image.asset(
                                    "lib/images/chart.png",
                                    fit: BoxFit.contain,
                                    height: 22,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            bottom: -8,
                            left: 14,
                            child: SizedBox(
                              width: 85,
                              height: 32,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: List.generate(
                                  4,
                                  (index) => Positioned(
                                    left: index * 20,
                                    child: CircleAvatar(
                                      radius: 16,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 14,
                                        backgroundImage: AssetImage(
                                          "lib/images/profile_icon.png",
                                        ),
                                        child: index == 3
                                            ? Icon(
                                                Icons.add,
                                                size: 12,
                                                color: Colors.black,
                                              )
                                            : null,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: -20,
                    right: 25,
                    child: SizedBox(
                      width: 125,
                      height: 70,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 120,
                            height: 66,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(.08),
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "10",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff274472),
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 4),
                                      child: Text(
                                        "Active",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Customers",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff274472),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Positioned(
                            right: -18,
                            top: 18,
                            child: SizedBox(
                              width: 62,
                              height: 30,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: List.generate(
                                  3,
                                  (index) => Positioned(
                                    left: index * 18,
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
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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

  Widget subscriptionDashboardCard() {
    return Container(
      height: 220,
      width: 360,
      decoration: BoxDecoration(
        color: Color(0xffE5B41A),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("lib/images/subscription_img.png", height: 120),
                  SizedBox(height: 18),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff2F55E7),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Subscriptions",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(width: 12),

            SizedBox(
              width: 150,
              height: 180,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -26,
                    right: 15,
                    child: SizedBox(
                      width: 120,
                      height: 90,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 115,
                            height: 70,
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff2F55E7),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "03 ",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Deliveries",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 75,
                            right: -20,
                            child: Container(
                              width: 120,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.08),
                                    blurRadius: 12,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "10",
                                        style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff274472),
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 3),
                                        child: Text(
                                          "Active",
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Subscriptions",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff274472),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            bottom: -1,
                            left: 14,
                            child: SizedBox(
                              width: 82,
                              height: 32,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: List.generate(
                                  3,
                                  (index) => Positioned(
                                    left: index * 20.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                      child: CircleAvatar(
                                        radius: 14,
                                        backgroundImage: AssetImage(
                                          "lib/images/profile_icon.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 125,
                    right: 25,
                    child: Container(
                      width: 125,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.08),
                            blurRadius: 12,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "119",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff274472),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 3),
                                    child: Text(
                                      "Pending",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Deliveries",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff274472),
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _avatar() {
    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.red, width: 2),
        image: DecorationImage(
          image: AssetImage("lib/images/profile_icon.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
