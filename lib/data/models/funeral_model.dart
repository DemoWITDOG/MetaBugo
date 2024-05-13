class FuneralModel {
  final int idx;
  final String uuid;
  final int user_idx;
  final int mourner_idx;
  final String deceased_name;
  final String deceased_gender;
  final DateTime deceased_birth;
  final DateTime death_datetime;
  final DateTime date_of_death;
  final double coordinates_x;
  final double coordinates_y;
  final String parlor_name;
  final String parlor_room;
  final String parlor_address;
  final String burial_ground;
  final String message;
  final DateTime created_at;
  final DateTime updated_at;

  FuneralModel({
    required this.idx,
    required this.uuid,
    required this.user_idx,
    required this.mourner_idx,
    required this.deceased_name,
    required this.deceased_gender,
    required this.deceased_birth,
    required this.death_datetime,
    required this.date_of_death,
    required this.coordinates_x,
    required this.coordinates_y,
    required this.parlor_name,
    required this.parlor_room,
    required this.parlor_address,
    required this.burial_ground,
    required this.message,
    required this.created_at,
    required this.updated_at,
  });

  // JSON 데이터를 FuneralModel 객체로 변환하는 역직렬화 메서드
  factory FuneralModel.fromJson(Map<String, dynamic> json) {
    return FuneralModel(
      idx: json['idx'] as int,
      uuid: json['uuid'] as String,
      user_idx: json['user_idx'] as int,
      mourner_idx: json['mourner_idx'] as int,
      deceased_name: json['deceased_name'] as String,
      deceased_gender: json['deceased_gender'] as String,
      deceased_birth: DateTime.parse(json['deceased_birth'] as String),
      death_datetime: DateTime.parse(json['death_datetime'] as String),
      date_of_death: DateTime.parse(json['date_of_death'] as String),
      coordinates_x: json['coordinates_x'] as double,
      coordinates_y: json['coordinates_y'] as double,
      parlor_name: json['parlor_name'] as String,
      parlor_room: json['parlor_room'] as String,
      parlor_address: json['parlor_address'] as String,
      burial_ground: json['burial_ground'] as String,
      message: json['message'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
    );
  }

  // FuneralModel 객체를 JSON 데이터로 변환하는 직렬화 메서드
  Map<String, dynamic> toJson() {
    return {
      'idx': idx,
      'uuid': uuid,
      'user_idx': user_idx,
      'mourner_idx': mourner_idx,
      'deceased_name': deceased_name,
      'deceased_gender': deceased_gender,
      'deceased_birth': deceased_birth.toIso8601String(),
      'death_datetime': death_datetime.toIso8601String(),
      'date_of_death': date_of_death.toIso8601String(),
      'coordinates_x': coordinates_x,
      'coordinates_y': coordinates_y,
      'parlor_name': parlor_name,
      'parlor_room': parlor_room,
      'parlor_address': parlor_address,
      'burial_ground': burial_ground,
      'message': message,
      'created_at': created_at.toIso8601String(),
      'updated_at': updated_at.toIso8601String(),
    };
  }
}
