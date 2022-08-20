import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  //지도 시작 시 위치
  CameraPosition _currentPosition = CameraPosition(
    target: LatLng(37.553836, 126.969652),
    zoom: 15, //확대
  );

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = MediaQuery.of(context).size.width;
    final double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF909090),
        elevation: 0,
        title: const Text("장소 정하기"),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: GoogleMap(
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              zoomControlsEnabled: false,
              initialCameraPosition: _currentPosition,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete();
              },
            ),
          ),
          Positioned(
            left: sizeWidth * 0.064,
            top: sizeHeight * 0.779,
            child: GestureDetector(
              onTap: (){},
              child: Container(
                width: sizeWidth * 0.872,
                height: sizeHeight * 0.064,
                color: const Color(0xff909090),
                child: Center(
                  child: Text("이 장소로 보내기",
                      style: TextStyle(
                          fontSize: sizeWidth * 0.042,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xffFFFFFF))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
