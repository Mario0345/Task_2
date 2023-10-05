import 'package:task_2/task_2.dart' as dolg;
import 'package:dio/dio.dart';

void main(List<String> arguments) async {
  Dio client = Dio();

  
  List<int> result_filter = [];
  final response = await client.get("https://myfakeapi.com/api/cars/");
  Map<String, dynamic> data =response.data;
  List<dynamic> products = data["cars"];
  List<int> sum = []; 
  double min = 3000;

  for (dynamic element in products) {
    String sto = element["price"];
    dynamic id = element["id"];
    bool availability = element["availability"];
    double sto_new = double.parse(sto.substring(1));
    if(sto_new < min && availability == true){
      min = sto_new ;
      print(id);
      print(min);
      
    
    }
    
  }
 
  
  
  // print(sum);
  // print(sum.length);
}
