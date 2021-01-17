import 'package:flutter/material.dart';
import 'package:mealapp/widgets/meal_item.dart';
import '../modules/meal.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> favouriteMeals;

  const FavouriteScreen(this.favouriteMeals);


  @override
  Widget build(BuildContext context) {
    if (favouriteMeals.isEmpty) {
      return Center(
          child: Text("You have no Favourite meals yet")
      );
    }

    else{

      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            imagUrl: favouriteMeals[index].imagUrl,
            title: favouriteMeals[index].title,
            duration: favouriteMeals[index].duration,
            complexity: favouriteMeals[index].complexity,
            affordability: favouriteMeals[index].affordability,
          );
        },
        itemCount: favouriteMeals.length,
      );

    }
  }
}
