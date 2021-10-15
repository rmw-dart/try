library try_catch;

import 'dart:async';
import 'dart:io';

Future<T> try_catch<T>(Future<T> Function() callback) {
  var completer = Completer<T>();
  runZonedGuarded(() async {
    completer.complete(await callback());
  }, (e, s) {
    stderr.write("❌ $e\n");
    stderr.write(s);
    completer.complete();
  });
  return completer.future;
}
