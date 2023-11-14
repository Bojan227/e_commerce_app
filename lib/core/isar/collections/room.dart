import 'package:isar/isar.dart';

part 'room.g.dart';

@collection
class Room {
  Id id = Isar.autoIncrement;

  @Index(unique: true, type: IndexType.value)
  String? name;

  String? image;
}
