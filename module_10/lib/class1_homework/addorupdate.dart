import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addorupdate extends StatelessWidget {
  const addorupdate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Add New Todo',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 4,
                    decoration: const InputDecoration(
                      hintText: 'Enter your todo here',
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 28,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Add')),
                  ),
                ],
              );
            });
      },
      child: Icon(CupertinoIcons.plus_bubble),
    );
  }
}
