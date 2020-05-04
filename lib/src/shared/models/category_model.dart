import 'package:hive/hive.dart';

@HiveType()
class CategoryModel extends HiveObject {
  @HiveField(0)
  String name;
}
