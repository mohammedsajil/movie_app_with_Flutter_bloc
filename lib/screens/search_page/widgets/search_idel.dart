// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:movies_app_with_bloc/constents.dart';
// import 'package:movies_app_with_bloc/screens/search_page/widgets/tilte.dart';


// class SearchIdleWidget extends StatelessWidget {
//   const SearchIdleWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SearchTitle(
//             title: 'Top Search',
//           ),
//           kheight10,
//           const SizedBox(
//             width: 5,
//           ),
//           Expanded(
//             child: BlocBuilder<SearchBloc, SearchState>(
//               builder: (context, state) {
//                 if (state.isLoading) {
//                   return const Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 } else if (state.isError) {
//                   return const Center(
//                     child: Text("Error while getting data"),
//                   );
//                 } else if (state.idelList.isEmpty) {
//                   return const Center(
//                     child: Text("List is Empty"),
//                   );
//                 } else {
//                   return ListView.separated(
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) {
//                       final movie = state.idelList[index];
//                       return TopSearchTile(
//                           imageUrl: '$imageAppendUrl${movie.posterPath}',
//                           title: movie.title ?? 'No title');
//                     },
//                     separatorBuilder: (context, index) => kheight20,
//                     itemCount: state.idelList.length,
//                   );
//                 }
//               },
//             ),
//           )
//         ],
//       )),
//     );
//   }
// }

// class TopSearchTile extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//   const TopSearchTile({
//     super.key,
//     required this.imageUrl,
//     required this.title,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Container(
//       child: Row(
//         children: [
//           Container(
//             width: screenWidth * 0.35,
//             height: 65,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 image: DecorationImage(
//                     fit: BoxFit.cover, image: NetworkImage(imageUrl))),
//           ),
//           const SizedBox(
//             width: 5,
//           ),
//           Expanded(
//               child: Text(
//             title,
//             style: const TextStyle(
//               color: kWhiteColor,
//               fontWeight: FontWeight.bold,
//               fontSize: 16,
//             ),
//           )),
//           const CircleAvatar(
//             backgroundColor: kWhiteColor,
//             radius: 25,
//             child: CircleAvatar(
//               backgroundColor: kBlackColor,
//               radius: 23,
//               child: Icon(
//                 CupertinoIcons.play_fill,
//                 color: kWhiteColor,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
