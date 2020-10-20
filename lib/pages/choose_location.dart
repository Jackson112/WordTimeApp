import 'package:flutter/material.dart';
import 'package:wordtimeapp/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
 List<WorldTime> locations = [
   WorldTime(url: 'Africa/Nairobi', location: 'Tanzania', flag: 'tanzania.jpg'),
   WorldTime(url: 'Europe/London', location: 'London', flag: 'england.jpg'),
   WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'german.png'),
   WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'america.png'),
   WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'cairo.jpg'),
   WorldTime(url: 'America/Newyork', location: 'Newyork', flag: 'america.png'),
   WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.jpg' ),
   WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png' ),
 ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose A Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount:locations.length,
        itemBuilder:(context,  index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(locations[index].location),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/${locations[index].flag}'),
              ),

            ),
          );
        },
      ),
    );
  }
}
