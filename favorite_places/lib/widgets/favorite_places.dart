import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/providers/favorites_provider.dart';
import 'package:favorite_places/widgets/new_place.dart';
import 'package:favorite_places/widgets/place_item.dart';
import 'package:favorite_places/widgets/place_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritePlaces extends ConsumerStatefulWidget {
  const FavoritePlaces({super.key});

  @override
  ConsumerState<FavoritePlaces> createState() => _FavoritePlacesState();
}

class _FavoritePlacesState extends ConsumerState<FavoritePlaces> {

  List<Place> _favList = [];

  void _addItem() async {
    final newPlace = await Navigator.of(context).push<Place>(
      MaterialPageRoute(builder: (ctx) => const NewPlace()),
    );

    if (newPlace == null) {
      return;
    }

    setState(() {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Place added.')));
    });
  }

  void _selectPlace(BuildContext context, Place place) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => PlacePage(
          place: place,
        ),
      ),
    );
    // Navigator.push(context, route);
  }

  @override
  Widget build(BuildContext context) {
    _favList = ref.watch(favoritesProvider);
    // ref.read(favoritesProvider.notifier).addPlace(const Place(name: 'hey girl'));

    Widget content = Center(
      child: Text('No places added yet.', 
      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.onSurface),),
    );

    if(_favList.isNotEmpty){
      // content = PlaceItem(place: favList[0]);
      content = ListView.builder(
        itemCount: _favList.length,
        itemBuilder: (ctx, index) => PlaceItem(
        place: _favList[index],
        onSelectPlace: (p){
          _selectPlace(context, p);
        },
      ),
      );
    }

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