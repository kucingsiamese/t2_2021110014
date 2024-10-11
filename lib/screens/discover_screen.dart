import 'package:flutter/material.dart';
import 'profile_screen.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});
  static const routeName = '/discover';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Find a new pet for you',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCategoryButton(context, 'Dog'),
                _buildCategoryButton(context, 'Cat'),
                _buildCategoryButton(context, 'Bird'),
                _buildCategoryButton(context, 'Fish'),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (ctx, i) => Card(
                  child: ListTile(
                    leading: Image.network('https://via.placeholder.com/100'),
                    title: Text('Pet ${i + 1}'),
                    subtitle: Text('Description of pet ${i + 1}'),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ProfileScreen.routeName);
              },
              child: const Text('Go to Profile'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(BuildContext context, String title) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          //primary: Colors.brown[200],
          ),
      child: Text(title),
    );
  }
}
