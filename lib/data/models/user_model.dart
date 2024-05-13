class UserModel {
  final int idx;
  final String phone;
  final DateTime birth;
  final String name;
  final DateTime created_at;

  UserModel({
    required this.idx,
    required this.phone,
    required this.birth,
    required this.name,
    required this.created_at,
  });

  // JSON 데이터를 UserModel 객체로 변환하는 역직렬화 메서드
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      idx: json['idx'] as int,
      phone: json['phone'] as String,
      birth: DateTime.parse(json['birth'] as String),
      name: json['name'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
    );
  }

  // UserModel 객체를 JSON 데이터로 변환하는 직렬화 메서드
  Map<String, dynamic> toJson() => {
    'idx': idx,
    'phone': phone,
    'birth': birth.toIso8601String(),
    'name': name,
    'created_at': created_at.toIso8601String(),
  };
}
