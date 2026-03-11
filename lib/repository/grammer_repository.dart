import 'package:spelly/storage/grammer_history_hive.dart';

class GrammerRepository {
  final hiveBox = GrammerHistoryHive();

  Future<List<GrammerHistoryHive>> loadHistory() async {
    final values = await hiveBox.loadGrammerHistory();
    return values;
  }
}
