import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = List.generate(
    12,
    (index) => {
      "title": "Item $index",
      "icon": Icons.ac_unit,
    },
  );
  static const name = 'grid_screen';

  GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tocaste ${items[index]["title"]}')),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      items[index]["icon"],
                      size: 40,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      items[index]["title"],
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
