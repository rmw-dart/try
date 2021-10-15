library try_;

import 'dart:async';
import 'dart:io';

Future<void> try_(Future Function() callback) {
  var completer = Completer<void>();
  runZonedGuarded(() async {
    await callback();
    completer.complete();
  }, (e, s) {
    stderr.write("❌ $e\n");
    stderr.write(s);
    completer.complete();
  });
  return completer.future;
}
