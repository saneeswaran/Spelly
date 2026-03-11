import 'package:hive_ce/hive.dart';

part 'grammer_history.g.dart';

@HiveType(typeId: 0)
class GrammerHistory extends HiveObject {
  @HiveField(0)
  final String originalText;
  @HiveField(1)
  final String correctedText;
  @HiveField(2)
  final DateTime createdAt;

  GrammerHistory({
    required this.originalText,
    required this.correctedText,
    required this.createdAt,
  });
}
