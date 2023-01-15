import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:todogo_app/objectbox.g.dart';

class ObjectBox {

  ObjectBox._create(this.store) {
    // Add any additional setup code, e.g. build queries.
  }
  /// The Store of this app.
  late final Store store;

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<ObjectBox> create() async {
    final Directory docsDir = await getApplicationDocumentsDirectory();
    final Store store = await openStore(directory: p.join(docsDir.path, 'obx-example'));
    return ObjectBox._create(store);
  }
}