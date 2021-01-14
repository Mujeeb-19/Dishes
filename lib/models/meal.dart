import 'package:flutter/foundation.dart';

enum EditorsChoice {
  Nope,
  NotBAd,
  Best,
}

enum Reviews {
  Bad,
  Good,
  Lovedit,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> cast;
  final List<String> story;
  final int duration;
  final EditorsChoice editorsChoice;
  final Reviews reviews;
  final bool hasSubtitles;
  final bool isRecommended;
 // final bool isVegan;
  //final bool isVegetarian;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.cast,
    @required this.story,
    @required this.duration,
    @required this.editorsChoice,
    @required this.reviews,
    @required this.hasSubtitles,
    @required this.isRecommended,
   // @required this.isVegan,
    //@required this.isVegetarian,
  });
}
