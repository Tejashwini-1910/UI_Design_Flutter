import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(ApiFetchDemo());

class ApiFetchDemo extends StatefulWidget {
  @override
  _ApiFetchDemoState createState() => _ApiFetchDemoState();
}

class _ApiFetchDemoState extends State<ApiFetchDemo> {
  List<dynamic> users = [];

  Future<void> fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      setState(() {
        users = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Fetch Data from REST API")),
        body: users.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(users[index]['name']),
                    subtitle: Text(users[index]['email']),
                  );
                },
              ),
      ),
    );
  }
}
