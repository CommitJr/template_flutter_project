import 'package:hive/hive.dart';

@HiveType()
class DocumentModel extends HiveObject {
  @HiveField(0)
  String name;
}
