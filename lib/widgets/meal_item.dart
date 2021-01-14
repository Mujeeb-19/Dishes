import 'package:flutter/material.dart';

import '../screens/meal_detail_screen.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final EditorsChoice editorsChoice;
  final Reviews reviews;

  MealItem(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.reviews,
      @required this.editorsChoice,
      @required this.duration,});

  String get editorsChoiceText {
    switch (editorsChoice) {
      case EditorsChoice.Nope:
        return 'Nope';
        break;
      case EditorsChoice.NotBAd:
        return 'Not Bad';
        break;
      case EditorsChoice.Best:
        return 'BEst';
        break;
      default:
        return 'Unknown';
    }
  }

  String get reviewsText {
    switch (reviews) {
      case Reviews.Bad:
        return 'Bad';
        break;
      case Reviews.Good:
        return 'Good';
        break;
      case Reviews.Lovedit:
        return 'Loved it!';
        break;
      default:
        return 'Unknown';
    }
  }
///////////////////////////////1111111//////////////////////////////////////
  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      MealDetailScreen.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }
///////////////////////////////1111111//////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.person_pin,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(editorsChoiceText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.people,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(reviewsText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
