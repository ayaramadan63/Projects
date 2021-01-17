import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String,bool> currentFilters;

  FiltersScreen(this.currentFilters,this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isGlutenFree = false;
  bool _isLactoseFree = false;
  bool _isVegan = false;
  bool _isVegetarian = false;


  initState(){

     _isGlutenFree = widget.currentFilters['gluten'];
     _isLactoseFree = widget.currentFilters['lactose'];
     _isVegan = widget.currentFilters['vegan'];
     _isVegetarian = widget.currentFilters['vegetarian'];

    super.initState();
  }

  Widget buildswitchlisttile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
        value: currentValue,
        title: Text(title),
        subtitle: Text(description),
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("your Filters"),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                final Map<String,bool> selectedFilters = {
                  'gluten': _isGlutenFree,
                  'lactose': _isLactoseFree,
                  'vegan': _isVegan,
                  'vegetarian': _isVegetarian,
                };

                widget.saveFilters(selectedFilters);
              })
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal selection..",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              buildswitchlisttile(
                  'Gluten Free', "Only include gluten free", _isGlutenFree,
                  (newValue) {
                setState(() {
                  _isGlutenFree = newValue;
                });
              }),
              buildswitchlisttile(
                  'Lactose Free', "Only include Lactose free", _isLactoseFree,
                  (newValue) {
                setState(() {
                  _isLactoseFree = newValue;
                });
              }),
              buildswitchlisttile('Vegan Free', "Only include Vegan", _isVegan,
                  (newValue) {
                setState(() {
                  _isVegan = newValue;
                });
              }),
              buildswitchlisttile(
                  'Vegetarian Free', "Only include Vegetarian", _isVegetarian,
                  (newValue) {
                setState(() {
                  _isVegetarian = newValue;
                });
              }),
            ],
          ))
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
