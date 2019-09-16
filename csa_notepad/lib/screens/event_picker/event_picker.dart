import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Pick Event")),
        body: Container(
            child: Center(
                child: Column(
          children: <Widget>[
            ListView.builder(
                itemBuilder: (BuildContext context, int index) => EventItem(
                    Week("Week1",
                        <Event>[Event("Bot Bash", "FIRST in Michigan")])))
          ],
        ))));
  }
}

class Event {
  const Event(this.name, this.district);

  final String name;
  final String district;
}

class Week {
  const Week(this.title, this.events);

  final String title;
  final List<Event> events;
}

class EventItem extends StatelessWidget {
  const EventItem(this.week);
  final Week week;

  Widget _buildTiles(Week week) {
    if (week.events.isEmpty) return ListTile(title: Text(week.title));
    return ExpansionTile(
      key: PageStorageKey<Week>(week),
      title: Text(week.title),
      children: week.events
          .map((Event event) =>
              ListTile(title: Text(event.name), subtitle: Text(event.district)))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(week);
  }
}
