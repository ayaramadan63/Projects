import 'package:flutter/material.dart';

class DoctorInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor',
      home: Scaffold(
        backgroundColor: Colors.pink[20],
        body: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/doctor_pic.png'),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Dr. Stefeni\nAlbert",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                          Text(
                            "Heart Speailist",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Container(
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: Image.asset(
                                        'assets/images/email.png',
                                        fit: BoxFit.cover,
                                      ),
                                      color: Colors.pink[50],
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                    ),
                                    width: 50,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: Image.asset(
                                        'assets/images/call.png',
                                        fit: BoxFit.fill,
                                      ),
                                      color: Colors.amber[50],
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                    ),
                                    width: 50,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: Image.asset(
                                        'assets/images/video_call.png',
                                        fit: BoxFit.fill,
                                      ),
                                      color: Colors.grey[100],
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)),
                                    ),
                                    width: 50,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "About",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Dr. Stefeni Albert is a cardiologist in Nashville & affiliated with multiple hospitals in the  area.He received his medical degree from Duke University School of Medicine and has been in practice for more than 20 years. ",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  textAlign: TextAlign.start,
                ),

                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset("assets/images/mappin.png"),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Address",
                                  style: TextStyle(
                                      color: Colors.black87.withOpacity(0.7),
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width - 268,
                                    child: Text(
                                      "House # 2, Road # 5, Green Road Dhanmondi, Dhaka, Bangladesh",
                                      style: TextStyle(color: Colors.grey),
                                    ))
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Image.asset("assets/images/clock.png"),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Daily Practict",
                                  style: TextStyle(
                                      color: Colors.black87.withOpacity(0.7),
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width - 268,
                                    child: Text(
                                      '''Monday - Friday
Open till 7 Pm''',
                                      style: TextStyle(color: Colors.grey),
                                    ))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Image.asset(
                      "assets/images/map.png",
                      width: 180,
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Activity",
                    style: TextStyle(
                        color: Color(0xff242424),
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
