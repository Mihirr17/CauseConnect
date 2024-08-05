import 'package:flutter/material.dart';
import 'package:ltp/widgets/ngo_info_box.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String selectedLocation = 'All Locations';
  String selectedCategory = 'All Categories';

  final List<String> locations = [
    'All Locations',
    'Pune',
    'Mumbai',
    'Delhi',
    // Add more locations as needed
  ];

  final List<String> categories = [
    'All Categories',
    'Environmental',
    'Disabled help',
    'Orphan help',
    // Add more categories as needed
  ];

  final List<NGO> ngos = [
    NGO('NGO 1', 'Pune', 'Environmental'),
    NGO('NGO 2', 'Mumbai', 'Disabled help'),
    NGO('NGO 3', 'Pune', 'Orphan help'),
    NGO('NGO 4', 'Delhi', 'Environmental'),
    NGO('NGO 5', 'Mumbai', 'Disabled help'),
    NGO('NGO 6', 'Delhi', 'Orphan help'),
    NGO('NGO 7', 'Pune', 'Environmental'),
    NGO('NGO 8', 'Mumbai', 'Disabled help'),
    NGO('NGO 9', 'Delhi', 'Orphan help'),
    NGO('NGO 10', 'Pune', 'Environmental'),
    NGO('NGO 11', 'Mumbai', 'Disabled help'),
    NGO('NGO 12', 'Delhi', 'Orphan help'),
    NGO('NGO 13', 'Pune', 'Environmental'),
    NGO('NGO 14', 'Mumbai', 'Disabled help'),
    NGO('NGO 15', 'Pune', 'Orphan help'),
    NGO('NGO 16', 'Delhi', 'Environmental'),
    NGO('NGO 17', 'Mumbai', 'Disabled help'),
    NGO('NGO 18', 'Delhi', 'Orphan help'),
    NGO('NGO 19', 'Pune', 'Environmental'),
    NGO('NGO 20', 'Mumbai', 'Disabled help'),
    NGO('NGO 21', 'Delhi', 'Orphan help'),
    NGO('NGO 22', 'Pune', 'Environmental'),
    NGO('NGO 23', 'Mumbai', 'Disabled help'),
    NGO('NGO 24', 'Delhi', 'Orphan help'),
    // Add more NGOs as needed
  ];

  List<NGO> filteredNGOs = [];

  @override
  void initState() {
    super.initState();
    filteredNGOs = ngos;
  }

  void filterNGOs() {
    setState(() {
      filteredNGOs = ngos
          .where((ngo) =>
              (selectedLocation == 'All Locations' ||
                  ngo.location == selectedLocation) &&
              (selectedCategory == 'All Categories' ||
                  ngo.category == selectedCategory))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: selectedLocation,
              onChanged: (String? newValue) {
                setState(() {
                  selectedLocation = newValue!;
                  filterNGOs();
                });
              },
              items: locations
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(width: 16),
            DropdownButton<String>(
              value: selectedCategory,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCategory = newValue!;
                  filterNGOs();
                });
              },
              items: categories
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: filteredNGOs
                .map(
                  (ngo) => NGOInfoBox(
                    ngo: ngo,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class NGO {
  final String name;
  final String location;
  final String category;

  // final String imageUrl;

  NGO(this.name, this.location, this.category);
}
