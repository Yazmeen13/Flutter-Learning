import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';

class PlacePage extends StatelessWidget {
  const PlacePage({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      ),
      body: Center(
        child: Text(place.name, style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.onSurface)),
      ),
    );
  }
}
