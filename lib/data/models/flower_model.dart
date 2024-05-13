class FlowerModel {
  final int idx;
  final int funeralIdx;
  final int flowerTypeIdx;
  final String senderGroup;
  final String sender;
  final String senderText;
  final String messageText;
  final Map<String, dynamic>? payResult;
  final Map<String, dynamic>? payCancelResult;
  final DateTime createdAt;

  FlowerModel({
    required this.idx,
    required this.funeralIdx,
    required this.flowerTypeIdx,
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
      funeralIdx: json['funeral_idx'] as int,
      flowerTypeIdx: json['flower_type_idx'] as int,
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
      'funeral_idx': funeralIdx,
      'flower_type_idx': flowerTypeIdx,
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