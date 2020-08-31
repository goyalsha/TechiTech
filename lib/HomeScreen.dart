import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String finalDate;

  @override
  void initState() {
    super.initState();
    var date = new DateTime.now().toString();

    var dateParse = DateTime.parse(date);
    var weekday = {
      1: "Monday",
      2: "Tuesday",
      3: "Wednesday",
      4: "Thursday",
      5: "Friday",
      6: "Saturday",
      7: "Sunday"
    };
    var months = {
      1: "Janurary",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };

    var formattedDate =
        "${weekday[dateParse.weekday]}, ${dateParse.day} ${months[dateParse.month]} ${dateParse.year}";

    setState(() {
      finalDate = formattedDate.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E8E8),
      appBar: PreferredSize(
          child: Container(
            child: Row(
              children: [
                // Adobe XD layer: 'Icon ionic-ios-menu' (group)
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13.0, bottom: 13.0, right: 15.0),
                  child: GestureDetector(
                    onTap: () => () {},
                    child: SizedBox(
                      width: 12.0,
                      height: 12.0,
                      child: Icon(
                        Icons.blur_linear,
                        color: Color(0xFF707070),
                      ),
                    ),
                  ),
                ),

                // Seprating Ling
                Container(
                  width: 1.0,
                  height: 25.0,
                  color: Color(0xFF707070),
                ),

                // Date
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: Text(
                    "$finalDate",
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 13,
                      color: const Color(0xff707070),
                      height: 1.8461538461538463,
                    ),
                  ),
                )
              ],
            ),
          ),
          preferredSize: Size.fromHeight(100)),
    );
  }
}
