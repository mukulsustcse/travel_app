import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {

  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name)
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: renderFacts(location),
      ),
    );
  }

  List<Widget> renderFacts(Location location) {

    final result = <Widget>[];

    for (int i = 0; i < location.facts.length; i++) {
      result.add(sectionTitle(location.facts[i].title));
      result.add(sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget sectionTitle(String text) {
    return Text(text);
  }

  Widget sectionText(String text) {
    return Text(text);
  }
}