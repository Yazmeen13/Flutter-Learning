import 'package:flutter/material.dart';

class NewPlace extends StatefulWidget {
  const NewPlace({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewPlaceState();
  }
}

class _NewPlaceState extends State<NewPlace> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Place'),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      ),
      body: Column(children: [
        const Text('form enter thing'),
        TextButton(onPressed: (){}, child: const Text('button'),),
      ],),
    );
  }
}
