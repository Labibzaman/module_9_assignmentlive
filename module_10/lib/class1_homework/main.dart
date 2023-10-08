import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.purpleAccent,
        primaryColor: Colors.purpleAccent,
        cardColor: Colors.purpleAccent),
    home: TodoApp(),
  ));
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          floatingActionButton: addorupdate(),
          appBar: AppBar(
            title: const Text('ToDo App'),
          ),
          body: ListView.separated(
            itemCount: 18,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        ListTile(
                          onTap: (){

                          },
                          leading: Icon(Icons.edit),
                          title: Text('Edit'),
                          trailing: Icon(CupertinoIcons.app_badge),
                        ),
                        ListTile(
                          onTap: (){

                          },
                          leading: Icon(Icons.delete_forever_outlined),
                          title: Text('Delete'),
                          trailing: Icon(CupertinoIcons.app_badge),
                        ),
                        ],
                      )
                    );
                  });
                },
                leading: CircleAvatar(
                  child: Text("${index + 1}"),
                ),
                title: Text('I have a lot work to do'),
                trailing: Icon(Icons.pending_actions),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 10,
              );
            },
          ),
        );
      },
    );
  }
}

