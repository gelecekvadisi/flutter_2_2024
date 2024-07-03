
import 'package:hive_flutter/hive_flutter.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends Object {
  UserModel({
    required this.name,
    required this.lastName,
    required this.gno,
    required this.mezunMu,
  });

  @HiveField(0)
  String name;

  @HiveField(1)
  String lastName;

  @HiveField(2)
  double gno;

  @HiveField(3)
  bool mezunMu;

  @override
  String toString() {
    return "Name: $name, Last Name: $lastName";
  }
}
