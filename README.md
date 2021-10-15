<!-- 本文件由 ./readme.make.md 自动生成，请不要直接修改此文件 -->

# try_

UPNP Port Forward

## use

```dart
import 'package:try_/init.dart';

Future<int> test1() async {
  await Future.delayed(Duration(seconds: 3));
  throw Exception('test error');
}

Future<int> test2() async {
  await Future.delayed(Duration(seconds: 1));
  return 1;
}

void main() async {
  print('await sleep 3 seconds');
  print(await try_(() => test1()));
  print(await try_(() => test2()));
  print('done');
}

```
