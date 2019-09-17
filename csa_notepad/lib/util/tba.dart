const String _tba_base = "https://www.thebluealliance.com/api/v3";

const String _getEvents = tba_base + "/events/year/";

class Event {
  const Event(this.name, this.district, this.week);

  final int week;
  final String name;
  final String district;
}

Future<List<Event>> getEventsFromYear(int year) async {
  eve
}