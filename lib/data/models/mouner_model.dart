class MournerModel {
  final int idx;
  final int funeral_idx;
  final String relation;
  final String name;
  final String phone;
  final String bank;
  final DateTime createdAt;

  MournerModel({
    required this.idx,
    required this.funeral_idx,
    required this.relation,
    required this.name,
    required this.phone,
    required this.bank,
    required this.createdAt,
  });

  // JSON 데이터를 MournerModel 객체로 변환하는 역직렬화 메서드
  factory MournerModel.fromJson(Map<String, dynamic> json) {
    return MournerModel(
      idx: json['idx'] as int,
      funeral_idx: json['funeral_idx'] as int,
      relation: json['relation'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      bank: json['bank'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
  }

  // MournerModel 객체를 JSON 데이터로 변환하는 직렬화 메서드
  Map<String, dynamic> toJson() {
    return {
      'idx': idx,
      'funeral_idx': funeral_idx,
      'relation': relation,
      'name': name,
      'phone': phone,
      'bank': bank,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
