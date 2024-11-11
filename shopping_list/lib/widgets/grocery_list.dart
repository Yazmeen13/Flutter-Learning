import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  final List<GroceryItem> _groceryItems = [];

  void _addItem() async{
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(builder: (ctx) => const NewItem()),
    );

    if(newItem == null){
      return;
    }

    setState(() {
      _groceryItems.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget defaultContent = const Center(child: Text('There are no items on your grocery list.'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          IconButton(onPressed: _addItem, icon: const Icon(Icons.add)),
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: _groceryItems.isEmpty ? defaultContent : 
        ListView.builder(
          itemCount: _groceryItems.length,
          itemBuilder: (ctx, index) => Dismissible(
            key: ValueKey(_groceryItems[index].id),
            onDismissed: (direction){
              setState((){
                _groceryItems.removeAt(index);
              });
            },
            child: ListTile(
              leading: Container(
                color: _groceryItems[index].category.color,
                width: 24,
                height: 24,
              ),
              title: Text(_groceryItems[index].name),
              trailing: Text(_groceryItems[index].quantity.toString()),
            ),
          ),
        ),
    );

    
  }
}
