import 'package:try_or_log/async.dart';

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
  print(await try_(() => test1())); //null
  print(await try_(() => test2())); //1
  print('done');
}
