<!-- 本文件由 ./readme.make.md 自动生成，请不要直接修改此文件 -->

# try_

UPNP Port Forward

## use

```dart
import 'package:try_/init.dart';

Future<void> test() async {
  await Future.delayed(Duration(seconds: 3));
  throw Exception('test error');
}

void main() async {
  print('await sleep 3 seconds');
  await try_(() => test());
  print('done');
}

```
