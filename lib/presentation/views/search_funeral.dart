import 'package:flutter/material.dart';
import 'package:metabugo/res/media_res.dart';

class SearchFuneral extends StatefulWidget {
  const SearchFuneral({super.key});

  @override
  State<SearchFuneral> createState() => _SearchFuneralState();
}

class _SearchFuneralState extends State<SearchFuneral> {
  bool _searchFuneral = false;

  Widget _searchTextField(){
    return TextField(
      autofocus: true,
      cursorColor: MediaRes.blueText,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: MediaRes.blueText
          )
        )
      ),
    );
  }
  Widget _defaultListView(){
    return Container();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _searchTextField(),
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left)),
        actions:!_searchFuneral
        ?[IconButton(
              onPressed: () {
                setState(() {
                  _searchFuneral = true;
                });
              },
              icon: Icon(Icons.search))
        ]:[IconButton(
            onPressed: () {
              setState(() {
                _searchFuneral = false;
              });
            },
            icon: Icon(Icons.highlight_off))],
      ),
      body: ListTile(
        onTap: () {
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
        subtitle: Text(
          'addr:장례식장 주소\ntelno:장례식장 전화번호',
          style: TextStyle(
              fontFamily: MediaRes.fontPretendard,
              fontWeight: MediaRes.medium,
              fontSize: MediaRes.fontSize14,
              color: MediaRes.greyText2),
        ),
      ),
    );
  }
}

