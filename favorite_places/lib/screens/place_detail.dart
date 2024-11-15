import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      ),
      body: Stack(
        children: [
          Image.file(
            place.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          )
        ],
      ),
      
      // Center(
      //   child: Text(
      //     place.title,
      //     style: Theme.of(context).textTheme.titleSmall!.copyWith(
      //           color: Theme.of(context).colorScheme.onSurface,
      //         ),
      //   ),
      // ),
    );
  }
}
