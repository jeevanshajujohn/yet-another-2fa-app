import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math'; // Import for generating random numbers

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Example',
      theme: ThemeData(
        brightness: Brightness.dark, // Set the overall brightness to dark
        primarySwatch: Colors.blue,
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black, // Set AppBar background color to black
        ),
        listTileTheme: ListTileThemeData(
          textColor: Colors.white, // Set text color for ListTile to white
          iconColor: Colors.white, // Set icon color for ListTile to white
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // Method to generate a 6-digit random number
  String generateRandomNumber() {
    final random = Random();
    final number = random.nextInt(900000) + 100000; // Generates a number between 100000 and 999999
    return number.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set Scaffold background color to black
      appBar: AppBar(
        title: const Text('Authenticator'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Settings'),
                    content: const Text('Settings button to be connected'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Add'),
                    content: const Text('To be connected to add page'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Search'),
                    content: const Text('For filteration purposes'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('More'),
                    content: const Text('More button pressed'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0), // Add padding to create space
        child: ListView(
          children: <Widget>[

            ListTile(
              title: Text('6-Digit Number:    ${generateRandomNumber()}'),
              leading: const Icon(Icons.numbers),
              tileColor: Colors.grey[800], // Dark grey background for the tile
              contentPadding: const EdgeInsets.all(16.0),
            ),
            const SizedBox(height: 20), // Add some space between the tile and other content
            ListTile(
              title: Text('6-Digit Number:    ${generateRandomNumber()}'),
              leading: const Icon(Icons.numbers),
              tileColor: Colors.grey[800], // Dark grey background for the tile
              contentPadding: const EdgeInsets.all(16.0),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: Text('6-Digit Number:    ${generateRandomNumber()}'),
              leading: const Icon(Icons.numbers),
              tileColor: Colors.grey[800], // Dark grey background for the tile
              contentPadding: const EdgeInsets.all(16.0),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: Text('6-Digit Number:    ${generateRandomNumber()}'),
              leading: const Icon(Icons.numbers),
              tileColor: Colors.grey[800], // Dark grey background for the tile
              contentPadding: const EdgeInsets.all(16.0),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: Text('6-Digit Number:    ${generateRandomNumber()}'),
              leading: const Icon(Icons.numbers),
              tileColor: Colors.grey[800], // Dark grey background for the tile
              contentPadding: const EdgeInsets.all(16.0),
            ),
            const SizedBox(height: 20),

            const Center(
              child: Text(
                'sample dummy numbers!!',
                style: TextStyle(color: Colors.white), // White text color for visibility
              ),
            ),
          ],
        ),
      ),
    );
  }
}
