/*
import 'package:flutter/material.dart';
import 'package:metabugo/presentation/viewmodels/furneral_viewmodel.dart';
import 'package:metabugo/res/media_res.dart';
import 'package:provider/provider.dart';
import 'package:metabugo/presentation/providers/funeral_search_provider.dart';

class SearchFuneral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final funeralSearchProvider = Provider.of<FuneralSearchProvider>(context);
    final funeralViewModel = Provider.of<FuneralViewModel>(context);
    final searchKeywordController = TextEditingController();

    Widget _searchTextField() {
      return TextField(
        autofocus: true,
        controller: searchKeywordController,
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

    Widget _defaultListView() {
      return ListView(
        children: [
          ListTile(
            title: Text('Service Key: ${funeralViewModel.serviceKey ?? 'N/A'}'),
          ),
          ListTile(
            title: Text('Page No: ${funeralViewModel.pageNo ?? 'N/A'}'),
          ),
          ListTile(
            title: Text('Number of Rows: ${funeralViewModel.numOfRows ?? 'N/A'}'),
          ),
          ListTile(
            title: Text('API Type: ${funeralViewModel.apiType ?? 'N/A'}'),
          ),
          ListTile(
            title: Text('CTPV: ${funeralViewModel.ctpv ?? 'N/A'}'),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: _searchTextField(),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_left)
        ),
        actions: !funeralSearchProvider.isSearching
            ? [
          IconButton(
              onPressed: () {
                final keyword = searchKeywordController.text;
                funeralSearchProvider.setIsSearching(true); // 검색 시작
                funeralViewModel.fetchData(keyword);
                print('search keyword : $keyword');
              },
              icon: Icon(Icons.search)
          )
        ]
            : [
          IconButton(
              onPressed: () {
                searchKeywordController.clear(); // 검색어 필드 초기화
                funeralSearchProvider.setIsSearching(false); // 검색 종료
                funeralSearchProvider.setSearchKeyword(''); // 검색어 초기화
              },
              icon: Icon(Icons.highlight_off)
          )
        ],
      ),
      body: _defaultListView(),
    );
  }
}

*/
