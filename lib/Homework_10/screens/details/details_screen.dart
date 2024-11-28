import 'package:flutter/material.dart';
import 'package:module4/Homework_10/models/movie.dart';
import 'package:module4/Homework_10/screens/details/components/body.dart';

class DetailsScreen10 extends StatelessWidget {
  final Movie movie;

  const DetailsScreen10({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body10(movie: movie),
    );
  }
}
