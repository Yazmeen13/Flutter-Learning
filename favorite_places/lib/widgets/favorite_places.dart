import 'package:favorite_places/main.dart';
import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/widgets/new_place.dart';
import 'package:flutter/material.dart';

class FavoritePlaces extends StatefulWidget {
  const FavoritePlaces({super.key});

  @override
  State<FavoritePlaces> createState() => _FavoritePlacesState();
}

class _FavoritePlacesState extends State<FavoritePlaces> {
  void _addItem() async {
    final newPlace = await Navigator.of(context).push<Place>(
      MaterialPageRoute(builder: (ctx) => const NewPlace()),
    );

    if (newPlace == null) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Text('No places added yet.', 
      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.onSurface),),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        actions: [
          IconButton(onPressed: _addItem, icon: const Icon(Icons.add)),
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: content,
    );
  }
}
