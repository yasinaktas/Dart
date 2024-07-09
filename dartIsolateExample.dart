import 'dart:io';
import 'dart:isolate';

Future<void> longRunningOperation(String message) async{
	for(int i = 0; i < 5; i++){
		await Future.delayed(Duration(seconds:1));
		print("$message: $i");
	}
}

main() async{
	print("start");
	Isolate.spawn(longRunningOperation,"Hello");
	print("continue");
	for(int i = 10; i < 15; i++){
		await Future.delayed(Duration(seconds:1));
		print("main index: $i");
	}
	print("end");
}
