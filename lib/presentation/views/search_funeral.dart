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
              color: MediaRes.blueText,
            ),
          ),
        ),
      );
    }

    Widget _defaultListView() {
      return ListView.builder(
        itemCount: funeralViewModel.funeralList.length,
        itemBuilder: (context, index) {
          final funeral = funeralViewModel.funeralList[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${funeral.fcltNm ?? '데이터가 없습니다.'}'),
                Text('${funeral.addr ?? '데이터가 없습니다.'}'),
                Text('전화번호 ${funeral.telno ?? '데이터가 없습니다.'}'),
                SizedBox(height: 16,),
                Divider(
                  indent: 1,
                  color: MediaRes.textUnderLineColor,
                  height: 0,
                )
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: _searchTextField(),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_arrow_left),
        ),
        actions: !funeralSearchProvider.isSearching
            ? [
          IconButton(
            onPressed: () {
              final keyword = searchKeywordController.text;
              funeralViewModel.fetchData(keyword);
              funeralSearchProvider.setIsSearching(true);
              print('search keyword : $keyword');

              // API 호출이 발생하는지 로그를 추가합니다.
              print('Fetching data...');
            },
            icon: Icon(Icons.search),
          )
        ]
            : [
          IconButton(
            onPressed: () {
              searchKeywordController.clear();
              funeralSearchProvider.setIsSearching(false);
              funeralSearchProvider.setSearchKeyword('');
            },
            icon: Icon(Icons.highlight_off),
          )
        ],
      ),
      body: Builder(
        builder: (context) {
          // 로그 추가
          print('Funeral List Length: ${funeralViewModel.funeralList.length}');

          return _defaultListView();
        },
      ),
    );
  }
}
