import 'package:flutter/material.dart';

import '../../models/meal.dart';
import '../meals/dummy_data.dart';

class MealDetailScreen extends StatefulWidget {
  static const route = 'meal-detail';

  final Function _toggleFavorite;
  final Function _isFavorite;

  MealDetailScreen(this._toggleFavorite, this._isFavorite);

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

// Multi Select widget
// This widget is reusable
class MultiSelect extends StatefulWidget {
  final List<String> items;
  const MultiSelect({Key key, @required this.items}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  // this variable holds the selected items
  final List<String> _selectedItems = [];

// This function is triggered when a checkbox is checked or unchecked
  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Topics'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map((item) => CheckboxListTile(
                    value: _selectedItems.contains(item),
                    title: Text(item),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (isChecked) => _itemChange(item, isChecked),
                  ))
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _cancel,
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: const Text('Submit'),
        ),
      ],
    );
  }
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  Widget buildSectionTitle(ThemeData _theme, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: _theme.textTheme.headline6.copyWith(color: Colors.black),
      ),
    );
  }

  Widget buildContainer({@required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink[100],
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      width: 300,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: child,
    );
  }

  String dropdownvalueDay = 'Sunday';
  // List of items in our dropdown menu
  var itemsDay = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
  ];

  String dropdownvalueHour = '12:30';
  // List of items in our dropdown menu
  var itemsHour = [
    '12:30',
    '1:00',
    '1:30',
    '3:30',
    '5:00',
  ];

  // This function is triggered when the floating buttion is pressed
  void _show(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: ctx,
        builder: (ctx) => Padding(
              padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(ctx).viewInsets.bottom + 15),
              child:StatefulBuilder(
              builder: (context, setInnerState) => SingleChildScrollView(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      DropdownButton(
                        alignment: Alignment.center,

                        // Initial Value
                        value: dropdownvalueDay,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: itemsDay.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String newValue) {
                          /*setState(() {
                            dropdownvalueDay = newValue;
                          });*/
                          setInnerState(() => dropdownvalueDay = newValue);
                        },
                        hint: Text("Select Day"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            onPressed: () => _show2(context),
                            child: const Text('Ok')),
                        /*  const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _selectDate(context);
                            },
                            child: const Text('Add appointment')
                        ),*/
                      ])
                ],
              )),
            )));
  }


  // This function is triggered when the floating buttion is pressed
  void _show2(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: ctx,
        builder: (ctx) => Padding(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 15),
            child:StatefulBuilder(
              builder: (context, setInnerState) => SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          DropdownButton(
                            alignment: Alignment.center,
                            // Initial Value
                            value: dropdownvalueHour,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: itemsHour.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String newValue) {
                              /* setState(() {
                            dropdownvalueHour = newValue;
                          });*/
                              setInnerState(() => dropdownvalueHour = newValue);
                            },
                            hint: Text("Select Hour"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                                onPressed: () {}, child: const Text('Ok')),
                            /*  const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              _selectDate(context);
                            },
                            child: const Text('Add appointment')
                        ),*/
                          ])
                    ],
                  )),
            )));
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final Meal meal = DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    final _theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  meal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              buildSectionTitle(_theme, 'Expert details'),
              buildContainer(
                child: ListView.builder(
                  itemCount: meal.ingredients.length,
                  itemBuilder: (ctx, index) {
                    return Card(
                      color: _theme.accentColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Text(
                          meal.ingredients[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              /*
              buildSectionTitle(_theme, 'Steps'),
              buildContainer(
                child: ListView.builder(
                  itemCount: meal.steps.length,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            child: Text('${index + 1}'),
                            backgroundColor: Colors.pink,
                          ),
                          title: Text(meal.steps[index]),
                        ),
                        Divider(),
                      ],
                    );
                  },
                ),
              ),*/
            ],
          ),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
               FloatingActionButton(
                 child: Icon(
                   widget._isFavorite(mealId)
                       ? Icons.favorite
                       : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: () => widget._toggleFavorite(mealId),
          ),
              const SizedBox(
            width: 15,
          ),
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () => _show(context),
              )
        ]));
  }
}
