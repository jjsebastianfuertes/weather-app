void main(){
  performTasks();
}

void performTasks() async{
  task1();
  String resultTask2 = await task2();
  task3(resultTask2);
}

void task1(){
  String result = "task 1 data complete";
  print(result);
}
Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, (){
    result = "task 2 data complete";
    print(result);
  });
  return result;
}
void task3(String task2){
  String result = "task 3 data complete by $task2";
  print(result);
}
