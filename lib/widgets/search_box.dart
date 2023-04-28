import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> theSuggestions = [
    'BarBell Workout',
    'DumbBell Workout',
    '20mins Workout',
    'Home Workout',
    'Health Diets'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));

    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> confirmQuery = [];
    for (var workout in theSuggestions) {
      if (workout.contains(query)) {
        confirmQuery.add(workout);
      }
    }

    return ListView.builder(
      itemCount: confirmQuery.length,
      itemBuilder: (context, index) {
        var result = confirmQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );

    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> confirmQuery = [];
    for (var workout in theSuggestions) {
      if (workout.contains(query)) {
        confirmQuery.add(query);
      }
    }
    return ListView.builder(
        itemCount: confirmQuery.length,
        itemBuilder: (context, index) {
          var result = confirmQuery[index];
          return ListTile(
            title: Text(result),
          );
        });

    throw UnimplementedError();
  }
}
