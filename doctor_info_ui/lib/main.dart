import 'package:flutter/material.dart';
import 'package:trainappone/doctor_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List<String> categories = ['Adults', 'Children', 'Womens', 'Mens'];
String selectedCategorie = "Adults";

List<String> disNum = [
  'Couch &\nCold',
  'Heart\nSpecialist',
  'Skin\nSpecialist',
];

List<String> docNum = [
  '10 Doctors',
  '17 Doctors',
  '27 Doctors',
];

List<String> images = [
  'assets/images/img1.png',
  'assets/images/img2.png',
  'assets/images/img3.png',
];



List<Color> colList = <Color>[
  Colors.pink[100],
  Colors.red[200],
  Colors.orange[200]];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Find Your \nConsultation',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(top: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Search",
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                fillColor: Colors.grey[200],
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Categories",
                          style: TextStyle(
                              color: Colors.black87.withOpacity(0.8),
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          child: ListView.builder(
                              itemCount: categories.length,
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return FlatButton(
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 30,
                                      width: 70,
                                      child: Text(
                                        categories[index],
                                        style: TextStyle(fontSize: 16),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  splashColor: Colors.pink[200],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.white)),
                                );
                              }),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          width: double.infinity,
                          height: 220,
                          child: ListView.builder(
                              itemCount: categories.length,
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Card(
                                  color: colList[index],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      children: [
                                        Text(
                                          disNum[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          docNum[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                          textAlign: TextAlign.start,
                                        ),
                                        Image(
                                          image: AssetImage(images[index]),
                                          width: 100,
                                          height: 120,
                                          fit: BoxFit.fill,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text(
                            'Doctors',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(top: 5),
                            height: 70,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(7),
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/images/doctor_pic.png'),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Dr. Stefeni Albert",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.orange),
                                        ),
                                        Text(
                                          "Heart Speailist",
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                    RaisedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Call',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: Colors.orange[400],
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    )
                                  ],
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => DoctorInfo()),
                                  );
                                },
                              ),
                            )),
                      ]),
                ))));
  }
}
