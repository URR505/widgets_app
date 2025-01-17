import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});
  static const name = 'tabs_screen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs Screen'),
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Seccion 1'),
                Tab(icon: Icon(Icons.favorite), text: 'Seccion 2'),
                Tab(icon: Icon(Icons.link), text: 'Seccion 3'),
                Tab(icon: Icon(Icons.track_changes), text: 'Seccion 4'),
              ],
            ),
            SizedBox(height: 20),
            TabBar(
              tabs: [
                Tab(text: 'Tab 1'),
                Tab(text: 'Tab 2'),
                Tab(text: 'Tab 3'),
                Tab(text: 'Tab 4'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Tab 1 Content')],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Tab 2 Content')],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Tab 3 Content')],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Tab 4 Content')],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
