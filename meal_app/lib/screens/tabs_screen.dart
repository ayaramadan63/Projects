import 'package:flutter/material.dart';
import '../modules/meal.dart';
import '../widgets/main_drawer.dart';
import 'categories_screen.dart';
import 'favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = 'tabs_screen';

  final List<Meal> favouriteMeals;

  const TabsScreen( this.favouriteMeals);



  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {


  List<Map<String,Object>> _pages;

  void initState(){
   _pages= [
      {
        'page': CategoriesScreen(),
        'title': 'Categories',
      },

      {
        'page': FavouriteScreen(widget.favouriteMeals),
        'title': 'Your Favourites',
      },


    ];
   super.initState();
  }



  int _selectedPageIndex= 0;
  void _selectpage(int value) {
    setState(() {

      _selectedPageIndex= value;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectpage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.amber,
        currentIndex: _selectedPageIndex,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("Categories")),
          BottomNavigationBarItem(
              icon: Icon(Icons.star), title: Text("Favourite")),
        ],
      ),
      drawer: MainDrawer(),
    );
  }


}
