import 'package:flutter/material.dart';
import 'package:movies_app_with_bloc/screens/app_screens/genre_card.dart';

import '../models/movie.dart';

class Genress extends StatelessWidget {
  const Genress({
    Key? key,
    required this.kDefaultPadding,
    required this.movie,
  }) : super(key: key);

  final double kDefaultPadding;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: size.height / 20,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 0,
            itemBuilder: (context, index) => Genrescard(
                  gnere: '',
                )),
      ),
    );
  }
}
