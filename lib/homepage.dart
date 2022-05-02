import 'package:flutter/material.dart';
import 'package:sunshine/fifthpage.dart';
import 'secondpage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 51, 142, 150),
      appBar: AppBar(
        title: const Text('WGS - coziness'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 61, 154, 133),
        elevation: 0.0,
        // 버튼 등 왼쪽에 위치
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {
        //     print('click menu');
        //   },
        // ),
        // 버튼 등 오른쪽에 위치
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              debugPrint('click shopping');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              debugPrint('click Search');
            },
          ),
        ],
      ),
      //              Drawer
      //             ListView
      // UserAccountsDrawerHeader                 ListTile
      // currentAccountPicture                    Icon
      // otherAccountsPictures                    Text
      // accountEmail                             onTap (gesture, InkWell)
      // accountName
      // decoration
      // onDetailsPressed
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/7.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/8.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/8.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountEmail: const Text('alex@alex.com'),
              accountName: const Text('동그라미'),
              onDetailsPressed: () {
                debugPrint('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[800],
              ),
              title: const Text('Home'),
              onTap: () {
                debugPrint('Home is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[800],
              ),
              title: const Text('Setting'),
              onTap: () {
                debugPrint('Setting is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[800],
              ),
              title: const Text('Question'),
              onTap: () {
                debugPrint('Question is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // verticalDirection: VerticalDirection.up,
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/7.png'),
              radius: 30.0,
            ),
          ),
          const Divider(
            height: 60.0,
            color: Color.fromARGB(255, 170, 153, 153),
            thickness: 1.0,
            endIndent: 0.0,
          ),
          const Text(
            'PSK',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 12.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'WR',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 12.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'DH',
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 12.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: const [
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Using Lightsaber ',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Using fireFlame ',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Using hero ',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/8.png'),
              radius: 30.0,
              backgroundColor: Color.fromARGB(255, 51, 142, 150),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
            child: const Text('Show SnackBar'),
            onPressed: () {
              debugPrint('On Hello');
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(
                  'Hello',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(seconds: 3),
              ));
            },
          ),
          ElevatedButton(
              child: const Text('Show ElevateButton of Snack Bar'),
              onPressed: () {
                debugPrint('On King');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text(
                    'king',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: Colors.teal,
                  duration: const Duration(seconds: 3),
                  action: SnackBarAction(
                      label: 'Undo',
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SecondPage(),
                            ));
                      }),
                ));
              }),
          TextButton(
            onPressed: () {
              flutterToast();
              debugPrint('toast');
            },
            child: const Text(
              'Toast',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SafeArea(
            //container
            // 최대한 배경 확보
            // child에 text가 있으면 text 만큼 확보
            // safeArea
            // 지정해준 경계 밖으로 벗어나지 않게함
            // 각 요소간의 보더 간격을 margin , 보더와 요소와의 간격을 padding
            // widget의 밖의 크기는 margin, widget의 안쪽 크기는 padding
            // Container 는 오직 한개의 child
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              width: 50, // pixel 단위
              height: 50,
              color: Colors.red,
              child: const Text('Container'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, // 여기서 context는 MyHomePage context
                  MaterialPageRoute(
                      // builder: (context) => SecondPage()));
                      // builder 는 일종의 안전장치
                      builder: (_) =>
                          const SecondPage())); // _ 사용하지 않는 값, 필요없는 매개변수
            },
            child: const Text('Go to the Second Page'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, // 여기서 context는 MyHomePage context
                  MaterialPageRoute(
                      // builder: (context) => SecondPage()));
                      // builder 는 일종의 안전장치
                      builder: (_) =>
                          const FifthPage())); // _ 사용하지 않는 값, 필요없는 매개변수
            },
            child: const Text('Go to the Fifth Page'),
          ),
        ],
      ),
    );
  }
}

// toast 던지면 chrome 오류
void flutterToast() {
  Fluttertoast.showToast(
    msg: "WGS",
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.white,
    fontSize: 20.0,
    textColor: Colors.black,
    toastLength: Toast.LENGTH_SHORT,
  );
}

//navigator
// stack
// push - pop

// ScaffoldMessenger
// 모든 Scaffold 정보가지고 있음 