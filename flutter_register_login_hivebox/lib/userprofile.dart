import 'package:hive/hive.dart';
part 'userprofile.g.dart';

@HiveType(typeId: 1)
class UserProfile {
  UserProfile(
      {required this.name, required this.email, required this.password});
  @HiveField(0)
  String name;

  @HiveField(1)
  String email;

  @HiveField(2)
  String password;
}
