import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///amar android studio te technical issue er karone. kichu code valo vabe design kora hoini
///consider my it

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        color: Colors.white,
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: MyBag(),
  ));
}

class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  int count1 = 1;
  int count2 = 1;
  int count3 = 1;
  int calculateTotal() {
    return count1 * 10;
  }
  int calculateTotal2() {
    return count2 * 10;
  }
  int calculateTotal3() {
    return count3 * 10;
  }

  int totalamount(){
    return calculateTotal3()+ calculateTotal2()+calculateTotal();
  }

  void showCheckoutSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Congraulation for buying '),
        duration: Duration(seconds: 2),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'My Bag',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Container(
                  width: constraints.maxWidth,
                  child: Card(
                    child: Stack(
                      ///this time i used single list Tile with out listview builder for ui design
                      children: [
                        ListTile(
                          leading: Image.network(
                            'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                            fit: BoxFit.cover,
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pullover',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Color: ',
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Text(
                                    'Black',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    'Size: ',
                                    style: Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Text(
                                    'L',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      count1++;
                                      setState(() {

                                      });
                                    },
                                    child: Icon(
                                      CupertinoIcons.plus_circle,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '$count1',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      count1--;
                                      setState(() {

                                      });
                                      int result = count1*10;
                                    },
                                    child: Icon(
                                      CupertinoIcons.minus_circle,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: Icon(Icons.more_vert_rounded),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Text(
                            '\$${calculateTotal()}', // Add your desired text here
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Stack(children: [
                    ListTile(
                      leading: Image.network(
                        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                        fit: BoxFit.cover,
                      ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pullover',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Color: ',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                'Black',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Size: ',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                'L',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  count2++;
                                  setState(() {});
                                },
                                child: Icon(
                                  CupertinoIcons.plus_circle,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '$count2',
                                style: TextStyle(fontSize: 25),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  count2--;
                                  setState(() {
                                  });
                                },
                                child: Icon(
                                  CupertinoIcons.minus_circle,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_rounded),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Text(
                        '\$${calculateTotal2()}', // Add your desired text here
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                ),
                Card(
                  child: Stack(children: [
                    ListTile(
                      leading: Image.network(
                        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                        fit: BoxFit.cover,
                      ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pullover',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Color: ',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                'Black',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 20),
                              Text(
                                'Size: ',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text(
                                'L',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  count3++;
                                  setState(() {

                                  });
                                },
                                child: Icon(
                                  CupertinoIcons.plus_circle,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '$count3',
                                style: TextStyle(fontSize: 25),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  count3--;
                                  setState(() {

                                  });
                                },
                                child: Icon(
                                  CupertinoIcons.minus_circle,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert_rounded),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Text(
                        '\$${calculateTotal3()}', // Add your desired text here
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Total Amount :',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(width:350,),
                        Text('\$ ${totalamount()}',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Center(
                      child: Container(
                        width:constraints.maxWidth ,
                        child: ElevatedButton(onPressed: () {
                          showCheckoutSnackBar();


                        }, style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0), // Adjust the radius as needed
                          ),
                        ),
                            child: Text('Checkout',)),
                      ),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}