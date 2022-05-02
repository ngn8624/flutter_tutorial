import 'package:flutter/material.dart';
// import 'thirdpage.dart';
// import 'fouthpage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // CrossAxisAlignment.end, // width: double.infinity,
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // verticalDirection: VerticalDirection.down,
            children: [
              Container(
                width: 50, // pixel 단위
                height: 50,
                color: Colors.red,
                child: const Text('Container1'),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 50, // pixel 단위
                height: 50,
                color: Colors.blue,
                child: const Text('Container2'),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 50, // pixel 단위
                height: 50,
                color: Colors.yellow,
                child: const Text('Container3'),
              ),
              // invisible container
              Container(
                width: double.infinity,
                height: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context, // 여기서 context는 MyHomePage context
                  //     MaterialPageRoute(
                  //         // builder: (context) => SecondPage()));
                  //         // builder 는 일종의 안전장치
                  //         builder: (_) =>
                  //             ThirdPage())); // _ 사용하지 않는 값, 필요없는 매개변수

                  Navigator.pushNamed(context, '/t');
                },
                child: const Text('Go to the Third Page'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context, // 여기서 context는 MyHomePage context
                  //     MaterialPageRoute(
                  //         // builder: (context) => SecondPage()));
                  //         // builder 는 일종의 안전장치
                  //         builder: (_) =>
                  //             FouthPage())); // _ 사용하지 않는 값, 필요없는 매개변수

                  Navigator.pushNamed(context, '/f');
                },
                child: const Text('Go to the Fouth Page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
