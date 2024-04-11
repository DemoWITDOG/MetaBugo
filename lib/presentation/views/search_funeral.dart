import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class SearchFuneral extends StatelessWidget {
  const SearchFuneral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.keyboard_arrow_left)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          onTap: (){
            MediaRes.greyColor;
          },
          title: Text(
            'fcltNm:장례식장이름',
            style: TextStyle(
              fontFamily: MediaRes.fontPretendard,
              fontWeight: MediaRes.medium,
              fontSize: MediaRes.fontSize18,
            ),
          ),
          subtitle: Text('addr:장례식장 주소\ntelno:장례식장 전화번호',
            style: TextStyle(
              fontFamily: MediaRes.fontPretendard,
              fontWeight: MediaRes.medium,
              fontSize: MediaRes.fontSize18,
            ),),
        ),
      ),
    );
  }
}
