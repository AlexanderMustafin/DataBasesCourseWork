import 'package:data_bases_project/database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Data with ChangeNotifier {
  String _data = '';

  String get getData => _data;

  void changeData(String newData) {
    _data = newData;

    notifyListeners();
  }
}

class TestDataWidget extends StatelessWidget {
  final latitude;
  final longitude;
  const TestDataWidget([this.latitude, this.longitude]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Flexible(
                child: FlutterMap(
                  options:
                      MapOptions(center: LatLng(latitude, longitude), zoom: 17),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildData(Country country) => ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(country.imgURl!),
      ),
      title: Text(country.name!),
      subtitle: Text(country.description!),
    );
