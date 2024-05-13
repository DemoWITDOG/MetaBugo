class FlowerTypeModel {
  final int idx;
  final int level;
  final String name;
  final int price;
  final DateTime createdAt;

  FlowerTypeModel({
    required this.idx,
    required this.level,
    required this.name,
    required this.price,
    required this.createdAt,
  });

  // JSON 데이터를 FlowerTypeModel 객체로 변환하는 역직렬화 메서드
  factory FlowerTypeModel.fromJson(Map<String, dynamic> json) {
    return FlowerTypeModel(
      idx: json['idx'] as int,
      level: json['level'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  // FlowerTypeModel 객체를 JSON 데이터로 변환하는 직렬화 메서드
  Map<String, dynamic> toJson() {
    return {
      'idx': idx,
      'level': level,
      'name': name,
      'price': price,
      'created_at': createdAt.toIso8601String(),
    };
  }
}