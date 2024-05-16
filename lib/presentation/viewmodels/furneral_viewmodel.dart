import 'package:flutter/cupertino.dart';
import 'package:metabugo/data/models/funeral_api_model.dart';
import 'package:metabugo/data/services/funeral_api_client.dart';

class FuneralViewModel extends ChangeNotifier {
  final FuneralApiClient _apiClient = FuneralApiClient();
  List<FuneralApiModel> _funeralList = []; // 여러 아이템을 저장하기 위한 리스트

  Future<void> fetchData(String keyword) async {
    try {
      final apiUrl = 'https://apis.data.go.kr/1352000/ODMS_DATA_04/callData04Api';
      final apiKey = 'QdtoAQ0dVV/s6QofBHqPTkki2EvgJ4OxaZmzSeZ/+ocvxviFB1mUQ6DeUi8SrM6SvolO+4o+FP7PwcOnUMFNnQ==';

      final response = await _apiClient.fetchData(apiUrl, apiKey, keyword);

      print('Response: $response');

      // API 응답을 직접 파싱하여 _funeralList를 업데이트
      _funeralList = response.map((data) => FuneralApiModel.fromJson(data)).toList();
      notifyListeners();
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  List<FuneralApiModel> get funeralList => _funeralList; // funeralList getter 추가
}
