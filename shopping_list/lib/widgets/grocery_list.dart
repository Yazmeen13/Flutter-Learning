import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/widgets/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  void _addItem(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => const NewItem()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        backgroundColor: Theme.of(context).colorScheme.surface,
        actions: [
          IconButton(onPressed: _addItem, icon: const Icon(Icons.add)),
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => ListTile(
          leading: Container(
            color: groceryItems[index].category.color,
            width: 24,
            height: 24,
          ),
          title: Text(groceryItems[index].name),
          trailing: Text(groceryItems[index].quantity.toString()),
        ),
      ),
    );
  }
}
