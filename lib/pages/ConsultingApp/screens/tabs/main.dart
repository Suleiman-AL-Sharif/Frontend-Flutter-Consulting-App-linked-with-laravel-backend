import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../log_in/FirstRoute.dart';
import '../../models/meal.dart';
import 'drawer.dart';
import '../categories/main.dart';
import '../favorites/main.dart';



class TabsScreen extends StatefulWidget {
  final List<Meal> _favoriteMeals;

  const TabsScreen(this._favoriteMeals);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _screens;

  int _selectedIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    _screens = [
      {
        'screen': CategoriesScreen(),
        'title': 'Consulting App',
      },
      {
        'screen': FavoritesScreen(widget._favoriteMeals),
        'title': 'Favorite Meals',
      },
    ];
  }

  //dropbutton
  String dropdownvalueDay = 'Medical';
  // List of items in our dropdown menu
  var itemsDay = [
    'Medical',
    'Psychological',
    'Business',
    'Technique',
    'Familial',
    'Sport',
  ];

// first show
  List<String> _selectedItems = [];
  void _showMultiSelect() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> items = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday'
    ];

    final List<String> results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: items);
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  // second show
  List<String> _selectedItems2 = [];
  void _showMultiSelect2() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> items2 = [
      '10:00 AM',
      '11:00 AM',
      '12:00 PM',
      '1:00 PM',
      '2:00 PM',
      '3:00 PM',
      '4:00 PM',
      '5:00 PM',
      '6:00 PM',
      '7:00 PM',
      '8:00 PM',
      '9:00 PM',
      '10:00 PM',
      '11:00 PM',
      '12:00 AM',
    ];

    final List<String> results2 = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: items2);
      },
    );

    // Update UI
    if (results2 != null) {
      setState(() {
        _selectedItems2 = results2;
      });
    }
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
            child: StatefulBuilder(
              builder: (context, setInnerState) => SingleChildScrollView(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextField(
                    decoration:
                        InputDecoration(labelText: 'Available days and times'),
                  ),
                  const Divider(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: _showMultiSelect,
                    child: const Text('Select Days'),
                  ),
                  const Divider(
                    height: 10,
                  ),
                  Wrap(
                    children: _selectedItems
                        .map((e) => Chip(
                              label: Text(e),
                            ))
                        .toList(),
                  ),
                  const Divider(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: _showMultiSelect2,
                    child: const Text('Select Times'),
                  ),
                  const Divider(
                    height: 10,
                  ),
                  Wrap(
                    children: _selectedItems2
                        .map((e) => Chip(
                              label: Text(e),
                            ))
                        .toList(),
                  ),
                  const Divider(
                    height: 10,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Submit')),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              )),
            )));
  }

  File imgFile;
  final imgPicker = ImagePicker();

  Future<void> showOptionsDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Options"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                    child: Text("Capture Image From Camera"),
                    onTap: () {
                      openCamera();
                    },
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  GestureDetector(
                    child: Text("Take Image From Gallery"),
                    onTap: () {
                      openGallery();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  void openCamera() async {
    var imgCamera = await imgPicker.getImage(source: ImageSource.camera);
    setState(() {
      imgFile = File(imgCamera.path);
    });
    Navigator.of(context).pop();
  }

  void openGallery() async {
    var imgGallery = await imgPicker.getImage(source: ImageSource.gallery);
    setState(() {
      imgFile = File(imgGallery.path);
    });
    Navigator.of(context).pop();
  }

  Widget displayImage() {
    if (imgFile == null) {
      return Text("No Image Selected!");
    } else {
      return Image.file(imgFile, width: 300, height: 300);
    }
  }

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
            child: StatefulBuilder(
              builder: (context, setInnerState) => SingleChildScrollView(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  DropdownButton(
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
                  const SizedBox(
                    width: 15,
                  ),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        labelText: 'Details of the consultation you provide'),
                  ),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: 'address'),
                  ),
                  const TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: 'Phone number'),
                  ),
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Price'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(height: 15),
                  Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Submit')),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                            onPressed: () => _show2(context),
                            child: const Text('Add appointment')),
                        const SizedBox(
                          width: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            showOptionsDialog(context);
                          },
                          child: Text("Select Image"),
                        )
                      ]),
                ],
              )),
            )));
  }

  /////////////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(_screens[_selectedIndex]['title'] as String),
        ),
        drawer: const MealsDrawer(),
        body: _screens[_selectedIndex]['screen'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectedTab,
          backgroundColor: _theme.primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: _theme.accentColor,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.category),
              label: 'Categories',
              backgroundColor: _theme.primaryColor,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.star),
              label: 'Favorites',
              backgroundColor: _theme.primaryColor,
            ),
          ],
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
               FloatingActionButton(
                 child: const Icon(Icons.add),
                  onPressed: () => _show(context),
                ),
                FloatingActionButton(
                    onPressed: ()  {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FirstRoute()),
                     );
                    },
                    tooltip: 'log out',
                    child: const Icon(Icons.logout)),
        ]));
  }
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
      title: const Text('Select Yor Consulting Category'),
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
