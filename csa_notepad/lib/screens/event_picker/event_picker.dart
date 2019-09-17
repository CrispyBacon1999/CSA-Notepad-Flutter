import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventPicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EventPickerState();
  }
}

class _EventPickerState extends State<EventPicker> {
  int filteredWeek = -1;

  List<Event> getEvents() {
    HttpClient().getUrl(url).then()
    return <Event>[
      Event("Great Lakes Bay Bot Bash", "Offseason", 99)
      ];
  }

  Map<String, int> getEventWeeks() {
    return <String, int>{
      'Preseason': 0,
      'Week 1': 1,
      'Week 2': 2,
      'Week 3': 3,
      'Week 4': 4,
      'Week 5': 5,
      'Week 6': 6,
      'Week 7': 7,
      'Houston Champs': 8,
      'Detroit Champs': 9,
      'Offseason': 99
    };
  }

  void filterEvents(BuildContext context) async {
    int week = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
              title: Text("Filter by Week"),
              children: getEventWeeks()
                  .map((title, num) => MapEntry<String, SimpleDialogOption>(
                      title,
                      SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, num);
                          },
                          child: Text(title))))
                  .values
                  .toList());
        });

    setState(() {
      filteredWeek = week;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Pick Event")),
        floatingActionButton: FloatingActionButton(
            onPressed: () => filterEvents(context),
            child: Icon(Icons.date_range)),
        body: Container(
            child: Center(
                child: Column(
          children: getEvents()
              .where((x) => this.filteredWeek == -1 || x.week == filteredWeek)
              .map((event) => ListTile(
                    title: Text(event.name),
                    subtitle: Text(event.district),
                  ))
              .toList(),
        ))));
  }
}


