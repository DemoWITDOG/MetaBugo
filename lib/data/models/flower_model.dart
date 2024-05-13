class FlowerModel {
  final int idx;
  final int funeral_idx;
  final int flowerType_idx;
  final String senderGroup;
  final String sender;
  final String senderText;
  final String messageText;
  final Map<String, dynamic>? payResult;
  final Map<String, dynamic>? payCancelResult;
  final DateTime createdAt;

  FlowerModel({
    required this.idx,
    required this.funeral_idx,
    required this.flowerType_idx,
    required this.senderGroup,
    required this.sender,
    required this.senderText,
    required this.messageText,
    this.payResult,
    this.payCancelResult,
    required this.createdAt,
  });

  // JSON 데이터를 FlowerModel 객체로 변환하는 역직렬화 메서드
  factory FlowerModel.fromJson(Map<String, dynamic> json) {
    return FlowerModel(
      idx: json['idx'] as int,
      funeral_idx: json['funeral_idx'] as int,
      flowerType_idx: json['flower_type_idx'] as int,
      senderGroup: json['sender_group'] as String,
      sender: json['sender'] as String,
      senderText: json['sender_text'] as String,
      messageText: json['message_text'] as String,
      payResult: json['pay_result'] as Map<String, dynamic>?,
      payCancelResult: json['pay_cancel_result'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  // FlowerModel 객체를 JSON 데이터로 변환하는 직렬화 메서드
  Map<String, dynamic> toJson() {
    return {
      'idx': idx,
      'funeral_idx': funeral_idx,
      'flower_type_idx': flowerType_idx,
      'sender_group': senderGroup,
      'sender': sender,
      'sender_text': senderText,
      'message_text': messageText,
      'pay_result': payResult,
      'pay_cancel_result': payCancelResult,
      'created_at': createdAt.toIso8601String(),
    };
  }
}