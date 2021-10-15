import 'package:try_catch/init.dart';

Future<int> test1() async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('test error');
}

Future<int> test2() async {
  await Future.delayed(Duration(seconds: 1));
  return 1;
}

void main() async {
  print('await sleep 1 seconds');
  var r = await tryCatch(() => test1());
  print(r); //null
  print(await tryCatch(() => test2())); //1
  print('done');
}
