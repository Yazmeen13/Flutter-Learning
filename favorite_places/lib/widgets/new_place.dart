import 'package:flutter/material.dart';

class NewPlace extends StatefulWidget {
  const NewPlace({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewPlaceState();
  }
}

class _NewPlaceState extends State<NewPlace> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a New Place'),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          const Text('form enter thing'),
          TextButton(onPressed: (){}, child: const Text('button'),),
        ],),
      ),
    );
  }
}
