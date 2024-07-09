import 'dart:io';
import 'dart:async';

Future<void> longRunningOperation() async{
	for(int i = 0; i < 5; i++){
		await Future.delayed(Duration(seconds:1));
		print("index: $i");
	}
}

main() async{
	print("start");
	longRunningOperation();
	print("continue");
	for(int i = 10; i < 15; i++){
		await Future.delayed(Duration(seconds:1));
		print("main index: $i");
	}
	print("end");
}
