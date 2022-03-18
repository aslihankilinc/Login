import 'package:login/const/Api.dart';
import 'package:login/models/result.dart';

import 'package:http/http.dart' as http;
 class MainApi{

  Future<void> Login(String? name,String? password) async {
    var r=new Result();
    var urls=url+"login";
    var data={"Name":name,"Password":password};
    r=(await http.post(Uri.parse(urls),body:data)) as Result;



  }

}