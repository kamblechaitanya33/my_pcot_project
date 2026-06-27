import 'package:flutter/material.dart';

class ApplicationCalendarWidget extends StatelessWidget {
  ApplicationCalendarWidget({super.key});

  final List<Map<String, dynamic>> dates = [
    {"day": "MON", "date": "20"},
    {"day": "TUE", "date": "21"},
    {"day": "WED", "date": "22"},
    {"day": "THU", "date": "23"},
    {"day": "FRI", "date": "24"},
    {"day": "SAT", "date": "25"},
    {"day": "SUN", "date": "26"},
  ];

  final int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        itemBuilder: (context, index) {
          final selected = index == selectedIndex;

          return Container(
            width: 55,
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  dates[index]["day"],
                  style: TextStyle(
                    fontSize: 14,
                    color: selected ? Colors.teal : Colors.grey.shade400,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  dates[index]["date"],
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: selected ? Colors.teal : Color(0xff2D3A4B),
                  ),
                ),
                SizedBox(height: 6),
                selected
                    ? Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          shape: BoxShape.circle,
                        ),
                      )
                    : SizedBox(height: 8),
              ],
            ),
          );
        },
      ),
    );
  }
}
