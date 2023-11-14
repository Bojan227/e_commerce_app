import 'package:ecommerce_app/core/isar/collections/room.dart';
import 'package:isar/isar.dart';

class SeedHelper {
  List<Room> rooms = [
    Room()
      ..image = 'lib/core/assets/category_1.png'
      ..name = 'bedroom',
    Room()
      ..image = 'lib/core/assets/category_2.png'
      ..name = 'kitchen',
    Room()
      ..image = 'lib/core/assets/category_3.png'
      ..name = 'living room',
  ];

  Future<void> populateRooms(Isar isar) async {
    await clearRooms(isar);

    await isar.writeTxn(() async {
      for (var room in rooms) {
        await isar.rooms.put(room);
      }
    });
  }

  Future<void> clearRooms(Isar isar) async {
    await isar.writeTxn(() async {
      final roomsIsar = await isar.rooms.where().findAll();

      for (var room in roomsIsar) {
        await isar.rooms.delete(room.id);
      }
    });
  }
}
