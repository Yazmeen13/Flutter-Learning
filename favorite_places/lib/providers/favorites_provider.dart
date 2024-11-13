import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritesNotifier extends StateNotifier<List<Place>> {
  FavoritesNotifier() : super([]);

  void addPlace (Place place){
    return state.add(place);
  }

}

final favoritesProvider =
    StateNotifierProvider<FavoritesNotifier, List<Place>>((ref) {
  return FavoritesNotifier();
});
