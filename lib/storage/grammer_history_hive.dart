import 'package:hive_ce/hive.dart';

class GrammerHistoryHive {
  final String boxName = "GrammerBox";

  Future<Box<GrammerHistoryHive>> openBox() async {
    return await Hive.openBox<GrammerHistoryHive>(boxName);
  }

  Future<void> add(GrammerHistoryHive grammer) async {
    final box = await openBox();
    await box.add(grammer);
  }

  Future<void> delete(int index) async {
    final box = await openBox();
    await box.deleteAt(index);
  }
}
