import 'package:flutter/material.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class BugoPreviewMap extends StatefulWidget {
  const BugoPreviewMap({Key? key}) : super(key: key);

  @override
  _BugoPreviewMapState createState() => _BugoPreviewMapState();
}

class _BugoPreviewMapState extends State<BugoPreviewMap> {
  late KakaoMapController mapController;
  Set<Marker> markers = {}; // 마커 변수

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: KakaoMap(
          onMapCreated: ((controller) async {
            mapController = controller;

            markers.add(
              Marker(
                markerId: UniqueKey().toString(),
                latLng: await mapController.getCenter(),
              ),
            );
            setState(() {}); // 상태를 업데이트하여 지도에 마커를 추가합니다.
          }),
          markers: markers.toList(),
          center: LatLng(37.3608681, 126.9306506),
        ),
      ),
    );
  }
}
