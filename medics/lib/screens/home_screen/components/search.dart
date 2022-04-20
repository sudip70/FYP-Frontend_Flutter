// import 'package:flutter/material.dart';
// import 'package:medics/constants.dart';
// import 'package:medics/screens/home_screen/components/covid.dart';

// class DataSearch extends SearchDelegate<String> {
//   final MedicalConditions = [
//     "Anxiety",
//     "Attention deficit hyperactivity disorder (ADHD)",
//     "Brain Tumours",
//     "Breast Cancer",
//     "Chickenpox",
//     "Common Cold",
//     "Constipation",
//     "Covid 19",
//     "Dehydration",
//     "Depression",
//     "Diabetes",
//     "Ebola",
//     "Erectile Dysfunction",
//     "Flu",
//     "Food Poisoning",
//     "Hiv",
//     "Std",
//   ];
//   final recentMedicalConditions = [
//     "Hiv",
//     "Std",
//     "Covid 19",
//     "Common Cold",
//     "Breast Cancer",
//   ];
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//           icon: Icon(Icons.clear),
//           onPressed: () {
//             query = "";
//           })
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//         icon: AnimatedIcon(
//           icon: AnimatedIcons.menu_arrow,
//           progress: transitionAnimation,
//         ),
//         onPressed: () {
//           close(context, 'null');
//         });
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     //show some result based on th selection
//     return CovidScreen();
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // show when someone searcher  for something

//     final suggestionList = query.isEmpty
//         ? recentMedicalConditions
//         : MedicalConditions.where((p) => p.startsWith(query)).toList();

//     return ListView.builder(
//       itemBuilder: (context, index) => ListTile(
//         onTap: () {
//           showResults(context);
//         },
//         leading: Icon(Icons.medical_services),
//         title: RichText(
//           text: TextSpan(
//               text: suggestionList[index].substring(0, query.length),
//               style:
//                   TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
//               children: [
//                 TextSpan(
//                     text: suggestionList[index].substring(query.length),
//                     style: TextStyle(color: Colors.grey))
//               ]),
//         ),
//       ),
//       itemCount: suggestionList.length,
//     );
//   }
// }

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
//             // subtitle: Text(person.surname),
//             // trailing: Text('${person.age} yo'),
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
