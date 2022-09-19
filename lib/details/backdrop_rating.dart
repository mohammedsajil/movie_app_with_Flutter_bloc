import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:animate_do/animate_do.dart';
import 'package:movies_app_with_bloc/api_key/api_key.dart';
import '../models/movie.dart';

class BackdropAndRating extends StatefulWidget {
  const BackdropAndRating({
    Key? key,
    required this.size,
    required this.movie,
    required this.kDefaultPadding,
  }) : super(key: key);

  final Size size;
  final Result movie;
  final double kDefaultPadding;

  @override
  State<BackdropAndRating> createState() => _BackdropAndRatingState();
}

class _BackdropAndRatingState extends State<BackdropAndRating> {
  bool _rated = false;
  @override
  Widget build(BuildContext context) {
    double? rating = widget.movie.voteAverage;
    int? totlevote = widget.movie.voteCount;
    return SizedBox(
      height: widget.size.height * 0.38,
      child: Stack(
        children: [
          Container(
            height: widget.size.height * 0.41 - 40,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://image.tmdb.org/t/p/w500/${widget.movie.posterPath!}"),
                    fit: BoxFit.fill)),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: widget.size.height * 0.11,
              width: widget.size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: const Color(0xFF12153D).withOpacity(0.2),
                        blurRadius: 50),
                  ]),
              child: FadeInRight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/star.png',
                          height: 25,
                        ),
                        SizedBox(
                          height: widget.kDefaultPadding / 2,
                        ),
                        RichText(
                            text: TextSpan(
                                style: const TextStyle(color: Colors.black),
                                children: [
                              //rating method
                              TextSpan(
                                text: _rated == true
                                    ? "${(rating! + .1).toStringAsFixed(3)}/"
                                    : "$rating/",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              const TextSpan(text: '10\n'),
                              //Total rating method
                              TextSpan(
                                  text: _rated
                                      ? '${totlevote! + 1}'
                                      : '$totlevote',
                                  style: TextStyle(color: Colors.grey[600]))
                            ]))
                      ],
                    ),
                    // rate this
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() => _rated = !_rated);
                            },
                            icon: Icon(
                              _rated
                                  ? Icons.star_rate_rounded
                                  : Icons.star_border_purple500_rounded,
                              size: 35,
                              color: _rated
                                  ? Colors.yellow.shade700
                                  : Colors.black,
                            )),
                        SizedBox(
                          height: widget.kDefaultPadding / 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Rate This',
                            style: TextStyle(color: Colors.grey[800]),
                          ),
                        )
                      ],
                    ),
                    // metascore
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(widget.kDefaultPadding / 5),
                          decoration: BoxDecoration(
                            color: const Color(0xFF51CF66),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: const Text(
                            '',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: widget.kDefaultPadding / 2,
                        ),
                        const Text(
                          'metascore',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${widget.movie.popularity} critic reviews',
                          style: TextStyle(color: Colors.grey[600]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // back button
          const SafeArea(
              child: BackButton(
            color: Colors.white,
          )),
        ],
      ),
    );
  }
}
