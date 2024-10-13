import 'package:flutter/material.dart';
// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key, required this.currentFilter});

  final Map<Filter, bool> currentFilter;

  @override
  State<FiltersScreen> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FiltersScreen> {
  // ignore: non_constant_identifier_names
  var _GFset = false;
  var _lactoseSet = false;
  var _veggieSet = false;
  var _veganSet = false;

  @override
  void initState() {
    super.initState();
    _GFset = widget.currentFilter[Filter.glutenFree]!;
    _lactoseSet = widget.currentFilter[Filter.lactoseFree]!;
    _veggieSet = widget.currentFilter[Filter.vegetarian]!;
    _veganSet = widget.currentFilter[Filter.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: (id) {
      //   Navigator.of(context).pop();
      //   if (id == 'meals') {
      //     Navigator.of(context).pushReplacement(
      //         MaterialPageRoute(builder: (ctx) => const TabsScreen()));
      //   }
      // }),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, dynamic result) {
          if (didPop) return;
          Navigator.of(context).pop({
            Filter.glutenFree: _GFset,
            Filter.lactoseFree: _lactoseSet,
            Filter.vegetarian: _veggieSet,
            Filter.vegan: _veganSet,
          });
        },
        child: Column(
          children: [
            // GLUTEN FREE
            SwitchListTile(
              value: _GFset,
              onChanged: (isChecked) {
                setState(() {
                  _GFset = isChecked;
                });
              },
              title: Text(
                'Gluten-free',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              subtitle: Text(
                'Only include gluten-free meals.',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),

            // LACTOSE FREE
            SwitchListTile(
              value: _lactoseSet,
              onChanged: (isChecked) {
                setState(() {
                  _lactoseSet = isChecked;
                });
              },
              title: Text(
                'Lactose-free',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              subtitle: Text(
                'Only include lactose-free meals.',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),

            // vEGETARIAN
            SwitchListTile(
              value: _veggieSet,
              onChanged: (isChecked) {
                setState(() {
                  _veggieSet = isChecked;
                });
              },
              title: Text(
                'Vegetarian?',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              subtitle: Text(
                'Only include vegetarian meals.',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),

            // VEGAN
            SwitchListTile(
              value: _veganSet,
              onChanged: (isChecked) {
                setState(() {
                  _veganSet = isChecked;
                });
              },
              title: Text(
                'Vegan?',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              subtitle: Text(
                'Only include vagan meals.',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
          ],
        ),
      ),
    );
  }
}
