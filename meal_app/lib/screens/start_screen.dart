import 'package:flutter/material.dart';
import 'package:mealapp/modules/meal.dart';
import 'package:mealapp/screens/tabs_screen.dart';

class StartScreen extends StatelessWidget {
  final List<Meal> favMeals;

  const StartScreen(this.favMeals);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink[300],
        child: Center(
            child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:50),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/foody1.png'),
                            fit: BoxFit.fill
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text("Get Fresh Food   ",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                        Icon(Icons.restaurant)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text("Choose A Tasty Food from Foody ",style: TextStyle(fontSize:15,),),
                  ),
                  Container(
                    width: 300,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return TabsScreen(favMeals);
                          }));

                        },
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child:
                        Text("Get Start",style: TextStyle(fontSize:25)),

                      ),
                    ),
                  )

                ])),
      ),
    );
  }
}
