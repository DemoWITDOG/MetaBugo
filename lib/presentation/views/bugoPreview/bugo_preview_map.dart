import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';

class BugoPreviewMap extends StatelessWidget {
  const BugoPreviewMap({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: MediaQuery.of(context).size.width,
      height: 200,
    );
  }
}
