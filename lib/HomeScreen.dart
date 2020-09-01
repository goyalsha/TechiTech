import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  IconData menuIcon = Ionicons.ios_grid;
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
      appBar: AppBar(
        // centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (this.menuIcon == Ionicons.ios_grid) {
                      this.menuIcon = Icons.cancel;
                    } else {
                      this.menuIcon = Ionicons.ios_grid;
                    }
                  });
                },
                child: Icon(
                  menuIcon,
                  color: Color(0xFF707070),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 2.0,
                  height: 30,
                  color: Color(0xFF707070),
                ),
              )
            ],
          ),
        ),
        title: Text(
          "$finalDate",
          style: TextStyle(
            fontFamily: 'Segoe UI',
            fontSize: 16,
            color: const Color(0xff707070),
            height: 1.8461538461538463,
          ),
        ),

        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Bottom Seprator Line
            Container(
              width: double.infinity,
              height: 2.00,
              color: Color(0xFF707070),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "TECHIE TECH",
                style: TextStyle(
                  fontFamily: 'Franklin Gothic',
                  fontSize: 40,
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w500,
                  height: 0.6,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.string(
                  '<svg viewBox="116.3 90.3 11.4 11.4" ><path transform="translate(116.32, 90.32)" d="M 1.818339824676514 -3.263072869685857e-07 L 9.546283721923828 -3.263072869685857e-07 C 10.5505256652832 -3.263072869685857e-07 11.36462497711182 0.8140988349914551 11.3646240234375 1.818340420722961 L 11.3646240234375 9.546283721923828 C 11.3646240234375 10.55052661895752 10.55052471160889 11.36462497711182 9.546282768249512 11.3646240234375 L 1.818339824676514 11.3646240234375 C 0.8140980005264282 11.3646240234375 -6.021194280947384e-07 10.55052471160889 0 9.546282768249512 L 0 1.818339467048645 C 0 0.8140981197357178 0.8140987157821655 -4.76837158203125e-07 1.818340182304382 -3.263072869685857e-07 Z M 8.530570983886719 10.24615573883057 L 8.528676986694336 10.24568271636963 C 9.171849250793457 10.23027420043945 9.692575454711914 9.718169212341309 9.718718528747559 9.075344085693359 C 9.744861602783203 8.43251895904541 9.267440795898438 7.879818916320801 8.627643585205078 7.812232494354248 L 6.29931640625 3.701079368591309 C 5.958850860595703 3.08928394317627 5.301123142242432 3.115801334381104 5.063887119293213 3.984248161315918 C 4.860270500183105 4.806289196014404 4.912832260131836 5.580977439880371 4.853641510009766 6.516664505004883 C 4.85316801071167 6.522820472717285 4.84890604019165 6.528028964996338 4.842750072479248 6.529449939727783 C 4.836594581604004 6.530870914459229 4.830438613891602 6.528502941131592 4.827123641967773 6.523293972015381 L 2.748344659805298 2.379468202590942 C 2.917866945266724 2.246407508850098 3.01730751991272 2.042791366577148 3.017781019210815 1.826863408088684 C 3.017781019210815 1.445303916931152 2.708465576171875 1.135988831520081 2.326906442642212 1.135988831520081 C 1.94534707069397 1.135988831520081 1.636031985282898 1.445303916931152 1.636032104492188 1.826863408088684 C 1.636032104492188 2.208422660827637 1.945347189903259 2.517737865447998 2.326906681060791 2.517737865447998 C 2.359579801559448 2.517737865447998 2.386097431182861 2.511108636856079 2.4121413230896 2.511108636856079 C 3.287217378616333 4.760356903076172 4.260786533355713 7.385111331939697 4.609302043914795 7.990277767181396 C 4.846065044403076 8.568926811218262 5.655320644378662 8.384725570678711 5.675208568572998 7.760144233703613 L 5.760443687438965 4.477662086486816 C 5.760443687438965 4.45777416229248 5.786487579345703 4.45777416229248 5.793590068817139 4.471032619476318 L 7.463242530822754 8.443442344665527 C 7.257309913635254 8.820620536804199 7.265305519104004 9.278390884399414 7.484283447265625 9.648148536682129 C 7.703262329101562 10.01790618896484 8.100834846496582 10.24495983123779 8.530569076538086 10.24568271636963 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  allowDrawingOutsideViewBox: true,
                  width: 17,
                  height: 17,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "NEWS | BLOGS | REVIEWS",
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 15,
                      color: const Color(0xff707070),
                      height: 1.8461538461538463,
                    ),
                  ),
                ),
                SvgPicture.string(
                  '<svg viewBox="116.3 90.3 11.4 11.4" ><path transform="translate(116.32, 90.32)" d="M 1.818339824676514 -3.263072869685857e-07 L 9.546283721923828 -3.263072869685857e-07 C 10.5505256652832 -3.263072869685857e-07 11.36462497711182 0.8140988349914551 11.3646240234375 1.818340420722961 L 11.3646240234375 9.546283721923828 C 11.3646240234375 10.55052661895752 10.55052471160889 11.36462497711182 9.546282768249512 11.3646240234375 L 1.818339824676514 11.3646240234375 C 0.8140980005264282 11.3646240234375 -6.021194280947384e-07 10.55052471160889 0 9.546282768249512 L 0 1.818339467048645 C 0 0.8140981197357178 0.8140987157821655 -4.76837158203125e-07 1.818340182304382 -3.263072869685857e-07 Z M 8.530570983886719 10.24615573883057 L 8.528676986694336 10.24568271636963 C 9.171849250793457 10.23027420043945 9.692575454711914 9.718169212341309 9.718718528747559 9.075344085693359 C 9.744861602783203 8.43251895904541 9.267440795898438 7.879818916320801 8.627643585205078 7.812232494354248 L 6.29931640625 3.701079368591309 C 5.958850860595703 3.08928394317627 5.301123142242432 3.115801334381104 5.063887119293213 3.984248161315918 C 4.860270500183105 4.806289196014404 4.912832260131836 5.580977439880371 4.853641510009766 6.516664505004883 C 4.85316801071167 6.522820472717285 4.84890604019165 6.528028964996338 4.842750072479248 6.529449939727783 C 4.836594581604004 6.530870914459229 4.830438613891602 6.528502941131592 4.827123641967773 6.523293972015381 L 2.748344659805298 2.379468202590942 C 2.917866945266724 2.246407508850098 3.01730751991272 2.042791366577148 3.017781019210815 1.826863408088684 C 3.017781019210815 1.445303916931152 2.708465576171875 1.135988831520081 2.326906442642212 1.135988831520081 C 1.94534707069397 1.135988831520081 1.636031985282898 1.445303916931152 1.636032104492188 1.826863408088684 C 1.636032104492188 2.208422660827637 1.945347189903259 2.517737865447998 2.326906681060791 2.517737865447998 C 2.359579801559448 2.517737865447998 2.386097431182861 2.511108636856079 2.4121413230896 2.511108636856079 C 3.287217378616333 4.760356903076172 4.260786533355713 7.385111331939697 4.609302043914795 7.990277767181396 C 4.846065044403076 8.568926811218262 5.655320644378662 8.384725570678711 5.675208568572998 7.760144233703613 L 5.760443687438965 4.477662086486816 C 5.760443687438965 4.45777416229248 5.786487579345703 4.45777416229248 5.793590068817139 4.471032619476318 L 7.463242530822754 8.443442344665527 C 7.257309913635254 8.820620536804199 7.265305519104004 9.278390884399414 7.484283447265625 9.648148536682129 C 7.703262329101562 10.01790618896484 8.100834846496582 10.24495983123779 8.530569076538086 10.24568271636963 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  allowDrawingOutsideViewBox: true,
                  width: 17,
                  height: 17,
                ),
              ],
            ),
            //Bottom Seprator Line
            Container(
              margin: EdgeInsets.only(top: 8.0),
              width: double.infinity,
              height: 2.00,
              color: Color(0xFF707070),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                  icon: Icon(
                    Foundation.rss,
                    color: Color(
                      0xFF707070,
                    ),
                  ),
                  onPressed: () {},
                  label: Text("NEWS"),
                  textColor: Color(0xFF707070),
                ),
                FlatButton.icon(
                  icon: Icon(
                    Foundation.social_blogger,
                    color: Color(
                      0xFF707070,
                    ),
                  ),
                  onPressed: () {},
                  label: Text("BLOG"),
                  textColor: Color(0xFF707070),
                ),
                FlatButton.icon(
                  icon: Icon(
                    Foundation.comment,
                    color: Color(
                      0xFF707070,
                    ),
                  ),
                  onPressed: () {},
                  label: Text("REVIEWS"),
                  textColor: Color(0xFF707070),
                ),
              ],
            ),
            //Bottom Seprator Line
            Container(
              width: double.infinity,
              height: 4.00,
              color: Color(0xFF707070),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  //Popular NEWs POST
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Image.asset("assets/images/news.jpg"),
                      ),
                      Container(
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Foundation.die_two),
                                Text(
                                  "POPULAR NEWS",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 13,
                                    color: const Color(0xff707070),
                                    height: 1.8461538461538463,
                                  ),
                                ),
                              ],
                            ),
                            //Bottom Seprator Line

                            //Bottom Seprator Line
                            Container(
                              margin: EdgeInsets.only(
                                  left: 7.0, top: 5.0, right: 5.0),
                              width: 145,
                              height: 1.00,
                              color: Color(0xFF707070),
                            ),
                            SizedBox(
                              width: 151.0,
                              height: 101.0,
                              child: Text(
                                "AMAZON ANNOUNCES HALO, A FITNESS BAND AND APP THAT SCANS YOUR BODY AND VOICE",
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 14,
                                  color: const Color(0xff707070),
                                  fontWeight: FontWeight.w700,
                                  height: 1.4318181818181817,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //Popular NEWs POST
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Image.asset("assets/images/news.jpg"),
                      ),
                      Container(
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Foundation.die_two),
                                Text(
                                  "POPULAR NEWS",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 13,
                                    color: const Color(0xff707070),
                                    height: 1.8461538461538463,
                                  ),
                                ),
                              ],
                            ),
                            //Bottom Seprator Line

                            //Bottom Seprator Line
                            Container(
                              margin: EdgeInsets.only(
                                  left: 7.0, top: 5.0, right: 5.0),
                              width: 145,
                              height: 1.00,
                              color: Color(0xFF707070),
                            ),
                            SizedBox(
                              width: 151.0,
                              height: 101.0,
                              child: Text(
                                "AMAZON ANNOUNCES HALO, A FITNESS BAND AND APP THAT SCANS YOUR BODY AND VOICE",
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 14,
                                  color: const Color(0xff707070),
                                  fontWeight: FontWeight.w700,
                                  height: 1.4318181818181817,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //Popular REVIEWS POST
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Image.asset("assets/images/news.jpg"),
                      ),
                      Container(
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Foundation.die_two),
                                Text(
                                  "POPULAR NEWS",
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 13,
                                    color: const Color(0xff707070),
                                    height: 1.8461538461538463,
                                  ),
                                ),
                              ],
                            ),
                            //Bottom Seprator Line

                            //Bottom Seprator Line
                            Container(
                              margin: EdgeInsets.only(
                                  left: 7.0, top: 5.0, right: 5.0),
                              width: 145,
                              height: 1.00,
                              color: Color(0xFF707070),
                            ),
                            SizedBox(
                              width: 151.0,
                              height: 101.0,
                              child: Text(
                                "AMAZON ANNOUNCES HALO, A FITNESS BAND AND APP THAT SCANS YOUR BODY AND VOICE",
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 14,
                                  color: const Color(0xff707070),
                                  fontWeight: FontWeight.w700,
                                  height: 1.4318181818181817,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
