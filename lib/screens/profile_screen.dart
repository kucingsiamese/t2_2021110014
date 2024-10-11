import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2_2021110014/providers/pet_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    final petProvider = Provider.of<PetProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/user_image.png'),
              radius: 40,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Hi, ${petProvider.userName}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(petProvider.userEmail),
            const SizedBox(height: 32.0),
            Text(
              'Your pets',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/discover');
              },
              child: const Text('Go to Discover Screen'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: petProvider.pets.length,
                itemBuilder: (context, index) {
                  final pet = petProvider.pets[index];
                  return Card(
                    child: ListTile(
                      title: Text(pet['name'] ?? ''),
                      subtitle: Text(pet['type'] ?? ''),
                    ),
                  );
                },
              ),
            ),
            Text(
              'Pet Care Nearby',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.pets),
                title: const Text('Animal Pet Care'),
                subtitle: const Text('1.3 km • ★ 4.2'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        icon: const Icon(Icons.bathroom), onPressed: () {}),
                    IconButton(icon: const Icon(Icons.cut), onPressed: () {}),
                    IconButton(
                        icon: const Icon(Icons.emoji_emotions),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
