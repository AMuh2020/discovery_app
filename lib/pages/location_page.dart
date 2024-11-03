import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> with OSMMixinObserver {
  MapController controller = MapController(
    initPosition: GeoPoint(latitude: 54.775554815442604, longitude: -1.5758860269755677),
  );
  bool marked = false;
  void initState() {
    super.initState();
    controller.addObserver(this);
  }

  @override
  Future<void> mapIsReady(bool isReady) async {
    if (isReady) {
      /// put you logic
    }
  }
  void checkLocation(GeoPoint position) {
    
  }
  
  @override
  void onLongTap(GeoPoint position) {
    // place a marker on the map
    if (marked == false) {
      controller.addMarker(
        position,
      );
      marked = true;

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess the location'),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/image.png'),
          Expanded(
            child: OSMFlutter(
              controller: controller,
              osmOption: OSMOption(
                
                zoomOption: ZoomOption(
                  minZoomLevel: 12,
                  maxZoomLevel: 14,
                  initZoom: 13,
                )
              ),
              
            ),
          ),
        ],
      )
    );
  }
}