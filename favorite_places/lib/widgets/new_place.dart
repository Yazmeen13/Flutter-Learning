import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/providers/favorites_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewPlace extends ConsumerWidget {
  const NewPlace({super.key});

  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _enteredPlace = "";
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a New Place'),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(12.0), child: 
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          TextField(
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Place Name')),
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onSurface),
            onSubmitted: (value){
              print(value);
              _enteredPlace = value;
            },
          ),
          TextButton(onPressed: (){

            if(_enteredPlace != ""){
              Place p = Place(name: _enteredPlace);

              print("entered: $_enteredPlace");
              ref.read(favoritesProvider.notifier).addPlace(p);
              
              Navigator.of(context).pop(p);
            }else{
              print('hey girl it didnt work');
            }
          }, child: const Text('button'),),
        ],),
      ),
    );
  }
}
