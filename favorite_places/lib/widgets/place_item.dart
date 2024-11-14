// import 'package:favorite_places/models/place.dart';
// import 'package:flutter/material.dart';

// class PlaceItem extends StatelessWidget {
//   const PlaceItem({
//     super.key,
//     required this.place,
//     required this.onSelectPlace,
//   });

//   final Place place;
//   final void Function(Place place) onSelectPlace;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 0,
//       color: Colors.transparent,
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: InkWell(
//           onTap: () {
//             onSelectPlace(place);
//           },
//           child: Text(
//             place.title,
//             style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
//           ),
//         ),
//       ),
//     );
//   }
// }
