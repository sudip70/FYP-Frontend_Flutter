import 'package:flutter/material.dart';
import 'package:medics/models/medconlist.dart';
import 'package:search_page/search_page.dart';

class MyHomePage extends StatelessWidget {
  List<Medconlist>? meds;
  MyHomePage({required this.meds});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Page'),
      ),
      body: ListView.builder(
        itemCount: meds!.length,
        itemBuilder: (context, index) {
          final Medconlist? person = meds![index];
          return ListTile(
            title: Text(person!.Name),
            // subtitle: Text(person.surname),
            // trailing: Text('${person.age} yo'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Search people',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<Medconlist>(
            onQueryUpdate: (s) => print(s),
            items: meds!,
            searchLabel: 'Search people',
            suggestion: const Center(
              child: Text('Filter people by name, surname or age'),
            ),
            failure: const Center(
              child: Text('No person found :('),
            ),
            filter: (person) => [
              person.Name,
              person.Cure,
              person.Description,
            ],
            builder: (person) => ListTile(
              title: Text(person.Name),
              subtitle: Text(person.Cure),
              trailing: Text('${person.Description} yo'),
            ),
          ),
        ),
        child: const Icon(Icons.search),
      ),
    );
  }
}
