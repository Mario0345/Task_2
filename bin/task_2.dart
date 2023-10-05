import 'package:task_2/task_2.dart' as dolg;
import 'package:dio/dio.dart';

void main(List<String> arguments) async {
  Dio client = Dio();

  
  List<int> result_filter = [];
  final response = await client.get("https://dummyjson.com/products");
  Map<String, dynamic> data =response.data;
  List<dynamic> products = data["products"];
  List<int> sum = []; 

  for (dynamic element in products) {
    int sto = element["price"];
    if(sto < 100){
      sum.add(sto) ;
    }
    
  }
  print(sum);
  print(sum.length);
}
