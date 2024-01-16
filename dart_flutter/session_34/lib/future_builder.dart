import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:session_34/commend_model.dart';
import 'package:http/http.dart' as http;

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {

  Future<List<CommendModel>> fetchData () async{
    String url = "https://jsonplaceholder.typicode.com/comments?_limit=20&_page=1";
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as List;
        return data.map((e) => CommendModel.valueFromJson(e)).toList();
      }
    } catch(e){
      print(e);
    }
    return [];
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("FutureBuilder Example"),
            backgroundColor: Colors.blue,
          ),
          body: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              switch(snapshot.connectionState) {
                case ConnectionState.none:
                  return Text("no data");
                case ConnectionState.waiting:
                case ConnectionState.active:
                  return Center(child: CircularProgressIndicator(),);
                case ConnectionState.done:
                  if(snapshot.hasError) {
                    return Text("error get data");
                  }else {
                    return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          CommendModel model = snapshot.data![index];
                          return Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: double.infinity,
                            height: 300,
                            color: Colors.orange.withOpacity(0.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(" ${model.postId} "),
                                SizedBox(height: 5,),
                                Text(" ${model.id} "),
                                SizedBox(height: 5,),
                                Text(" ${model.name} "),
                                SizedBox(height: 5,),
                                Text(" ${model.email} "),
                                SizedBox(height: 5,),
                                Text(" ${model.body} "),
                                SizedBox(height: 5,),
                              ],
                            ),
                          );
                        }
                    );
                  }
              }
            },
          ),
        ),
      ),
    );
  }
}
