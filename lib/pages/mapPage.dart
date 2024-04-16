import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEBE2C7),
        title: Text('Карта'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(61.25, 73.4167),
          zoom: 12.2,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(61.25, 73.4167),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Информация о метке'),
                          content: Text('Текст, описывающий метку'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Закрыть'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Tooltip(
                    message: 'Нажмите, чтобы узнать больше',
                    child: Container(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(61.26, 73.37),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Информация о метке'),
                          content: Text('Текст, описывающий метку'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Закрыть'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Tooltip(
                    message: 'Нажмите, чтобы узнать больше',
                    child: Container(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
