import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:flutter/cupertino.dart';

class MapView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MapViewState();
  }
}

class MapViewState extends State<MapView> {
  AmapController _controller;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AmapView(
          showZoomControl: true,
          maskDelay: Duration(microseconds: 500),
          onMapCreated: (controller) {
            _controller = controller;
          }),
    );
  }
}
