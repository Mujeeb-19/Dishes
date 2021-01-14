import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Action',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Comedy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Drama',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Fantasy',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Horror',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Mytery',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Romance',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Thriller',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Political',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Experimental',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c8',
    ],
    title: 'Baaghi',
    reviews: Reviews.Bad,
    editorsChoice: EditorsChoice.Nope,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/0/07/Baaghi_Hindi_film_poster.jpg',
    duration: 138,
    cast: [
      'Tiger Shroff ',
      'Shraddha Kapoor',
      'Sudheer Babu ',
      'Sunil Grover',
    ],
    story: [
      'Ronny is a rebellious man, who falls in love with Sia but circumstances separate them. Years later, Ronny learns that Sia is abducted by a martial arts champion, Raghav.'
    ],
    hasSubtitles: true,
    //  isVegan: true,
    //isVegetarian: true,
    isRecommended: false,
  ),
  Meal(
    id: 'm2',
    categories: ['c3', 'c7'],
    title: 'Kabir Singh',
    reviews: Reviews.Good,
    editorsChoice: EditorsChoice.Best,
    imageUrl:
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSSBjgn6nmJttwcTh0nmdTxJLyomVapLaColnlJZ9dXLjf-Y1tP',
    duration: 178,
    cast: [
      'Shahid Kapoor',
      'Kiara Advani',
    ],
    story: [
      'Kabir Singh, a senior medical student with a passion for old English motorcycles and football, is heartbroken when his girlfriend is forced to marry another man. Already struggling with anger issues, he falls into a self-destructive spiral.'
    ],
    hasSubtitles: true,
    // isVegan: false,
    //isVegetarian: false,
    isRecommended: true,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c5',
    ],
    title: 'Bhool Bhulaiyaa',
    reviews: Reviews.Good,
    editorsChoice: EditorsChoice.NotBAd,
    imageUrl:
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQhaeKKC10qC7F3ovoWe_kusdkSpJkS26iN3zzApK9w_A2NHQ4N',
    duration: 159,
    cast: [
      'Akshay Kumar',
      'Vidya Balan',
      'Rajpal Yadav',
    ],
    story: [
      'An NRI and his wife decide to stay in his ancestral home, paying no heed to the warnings about ghosts. Soon, inexplicable occurrences cause him to call a psychiatrist to help solve the mystery'
    ],
    hasSubtitles: false,
    // isVegan: false,
    // isVegetarian: false,
    isRecommended: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c2',
    ],
    title: 'Hera Pheri',
    reviews: Reviews.Lovedit,
    editorsChoice: EditorsChoice.Best,
    imageUrl: 'https://static.toiimg.com/photo/63683707.cms',
    duration: 156,
    cast: [
      'Akshay Kumar',
      'Paresh Rawal',
      'Sunil Shetty',
    ],
    story: [
      'Three people in dire need of money become involved in a gangster\'s plot to kidnap a wealthy man\'s grandson.'
    ],
    hasSubtitles: true,
    // isVegan: false,
    // isVegetarian: false,
    isRecommended: true,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c8',
    ],
    title: 'A Wednesday',
    reviews: Reviews.Lovedit,
    editorsChoice: EditorsChoice.Best,
    imageUrl: 'https://i.ytimg.com/vi/Sox7KmmAEZI/hqdefault.jpg',
    duration: 15,
    cast: [
      'Naseeruddin Shah',
      'Anupam Kher',
    ],
    story: [
      'A retired police commissioner recounts the most memorable case of his career, wherein he was informed about a bomb scare in Mumbai.'
    ],
    hasSubtitles: false,
    // isVegan: false,
    // isVegetarian: true,
    isRecommended: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
    ],
    title: 'Andhahdun',
    reviews: Reviews.Good,
    editorsChoice: EditorsChoice.NotBAd,
    imageUrl: 'https://www.movienewsletters.net/photos/274813R1.jpg',
    duration: 150,
    cast: [
      'Ayushmann Khurrana‎; ',
      'Tabu;',
      'Radhika Apte',
    ],
    story: [
      'Akash, a piano player pretending to be visually-impaired, unwittingly becomes entangled in a number of problems as he witnesses the murder of a former film actor.',
    ],
    hasSubtitles: false,
    // isVegan: false,
    // isVegetarian: true,
    isRecommended: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'Gangs Of Wasseypur',
    reviews: Reviews.Lovedit,
    editorsChoice: EditorsChoice.Best,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/en/6/6a/Gangs_of_Wasseypur_poster.jpg',
    duration: 160,
    cast: [
      'Nawaz uddin Siddiqui',
      'Manoj Bajpai',
      'Richa Chadda',
    ],
    story: [
      'A gangster (Manoj Bajpayee) clashes with the ruthless, coal-mining kingpin (Tigmanshu Dhulia) who killed his father.'
    ],
    hasSubtitles: false,
    // isVegan: false,
    // isVegetarian: true,
    isRecommended: true,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c10',
    ],
    title: 'Barfi',
    reviews: Reviews.Bad,
    editorsChoice: EditorsChoice.Nope,
    imageUrl:
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRiwKIHWGRhZIBDOBn2mMrt8OzLKHUKQqnY2dWVG61OxgclTwNh',
    duration: 151,
    cast: [
      'Ranbir Kapoor',
      'Priyanka Chopra',
      'Ileana D\'cruz',
    ],
    story: [
      'Shruti loves Barfi, a hearing and speech-impaired man, but marries someone else. Years later, she learns that he is in love with an autistic girl, and feels the need to rethink her own marriage.'
    ],
    hasSubtitles: true,
    // isVegan: false,
    // isVegetarian: false,
    isRecommended: false,
  ),
  Meal(
    id: 'm9',
    categories: ['c9', 'c5'],
    title: 'Youngistaan',
    reviews: Reviews.Bad,
    editorsChoice: EditorsChoice.Nope,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsl9IJ6eXte8wzdeUkEwFsMwwxDyp2Ol34tyvt-JU9G1OqoamP',
    duration: 133,
    cast: [
      'Jackky Bhagnani',
      'Jackky Bhagnani',
      'Boman Irani',
    ],
    story: [
      'A young man (Jackky Bhagnani) refuses to get rid of his live-in lover (Neha Sharma) after he succeeds his father as India\'s prime minister.',
    ],
    hasSubtitles: true,
    // isVegan: false,
    // isVegetarian: true,
    isRecommended: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'Phillauri',
    reviews: Reviews.Good,
    editorsChoice: EditorsChoice.NotBAd,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHz9ErHh7GE2lQQyToRoREf8wYuA3k-ic4NjUz26yVt4kYUx2N',
    duration: 138,
    cast: [
      'Anushka Sharma',
      'Suraj Sharma',
      'Diljit Dosanjh',
    ],
    story: [
      'Born under an unlucky star, Kanan is told he must marry a tree before he can wed his childhood sweetheart, as the ritual will cleanse him of his bad luck. Grudgingly, he agrees. To his shock, he finds himself being trailed by an unearthly spirit known as Shashi, who used to live in the tree. The bewildered spirit now finds herself trapped in the human realm, and Kanan must help her return to her own realm.'
    ],
    hasSubtitles: true,
    // isVegan: true,
    // isVegetarian: true,
    isRecommended: false,
  ),
];
