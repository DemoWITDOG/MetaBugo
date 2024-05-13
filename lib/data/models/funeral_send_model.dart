class FuneralSendModel {
  final int idx;
  final int funeral_idx;
  final String recipient;
  final String send_result;
  final String created_at;

  FuneralSendModel({
    required this.idx,
    required this.funeral_idx,
    required this.recipient,
    required this.send_result,
    required this.created_at,
  });

  // JSON 데이터를 FuneralSendModel 객체로 변환하는 역직렬화 메서드
  factory FuneralSendModel.fromJson(Map<String, dynamic> json) {
    return FuneralSendModel(
      idx: json['idx'] as int,
      funeral_idx: json['funeral_idx'] as int,
      recipient: json['recipient'] as String,
      send_result: json['send_result'] as String,
      created_at: json['created_at'] as String,
    );
  }

  // FuneralSendModel 객체를 JSON 데이터로 변환하는 직렬화 메서드
  Map<String, dynamic> toJson() {
    return {
      'idx': idx,
      'funeral_idx': funeral_idx,
      'recipient': recipient,
      'send_result': send_result,
      'created_at': created_at,
    };
  }
}
