import 'package:ecommerce_app/core/isar/collections/room.dart';
import 'package:ecommerce_app/core/isar/seed/seed_helper.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarHelper {
  final SeedHelper seedHelper;

  late Isar isarDb;

  IsarHelper({required this.seedHelper});

  Future<void> open() async {
    final dir = await getApplicationDocumentsDirectory();
    isarDb = await Isar.open(
      [RoomSchema],
      directory: dir.path,
    );

    await seedHelper.populateRooms(isarDb);
  }

  Future<List<Room>> getRooms(String searchQuery) async {
    final roomsCollection = isarDb.collection<Room>();
    final rooms =
        await roomsCollection.filter().nameContains(searchQuery).findAll();

    return rooms;
  }
}
