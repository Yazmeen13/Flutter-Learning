import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/providers/user_places.dart';
import 'package:favorite_places/screens/add_place.dart';
import 'package:favorite_places/widgets/places_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesListScreen extends ConsumerWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Place> userPlaces = ref.watch(userPlacesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push<Place>(
                  MaterialPageRoute(builder: (ctx) => const AddPlaceScreen()),
                );
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: PlacesList(places: userPlaces),
    );
  }
}
