import 'package:flutter/material.dart';

class Book {
  const Book({
    required this.id,
    required this.price,
    required this.image,
  });

  final String id;
  final double price;
  final String image;
}
const List<Book> books = [
 Book(
    id: 'b1',
    price: 12.0,
    image: 'assets/images/The_Maze_Runner_cover.png',
  ), // The Maze Runner

  Book(
    id: 'b2',
    price: 15.0,
    image: 'assets/images/Narnia.webp',
  ), // Narnia

  Book(
    id: 'b3',
    price: 9.5,
    image: 'assets/images/Little women.jpg',
  ), // Little Women

  Book(
    id: 'b4',
    price: 10.0,
    image: 'assets/images/Anne of green gables.jpg',
  ), // Anne of Green Gables

  Book(
    id: 'b5',
    price: 16.0,
    image: 'assets/images/Harry potter.jpg',
  ), // Harry Potter

  Book(
    id: 'b6',
    price: 8.0,
    image: 'assets/images/Ekadoli.jpg',
  ), // Ikadoli

  Book(
    id: 'b7',
    price: 13.0,
    image: 'assets/images/The book thief.jpg',
  ), // The Book Thief

  Book(
    id: 'b8',
    price: 12.5,
    image: 'assets/images/The hunger games.jpg',
  ), // The Hunger Games
];