import 'package:flutter/material.dart';
import 'package:sunshine/fouthpage.dart';
import 'package:sunshine/secondpage.dart';
import 'package:sunshine/thirdpage.dart';
import 'fifthpage.dart';
import 'person.dart';
import 'homepage.dart';

void main() {
  List a = <dynamic>[];
  a.add(2);
  a.add('test');
  a.add(7.4);
  a.add(addNumber(3, 5));
  a.add(true);
  debugPrint('$a');

  debugPrint('================');

  List<String> names = [];
  names.addAll(['James', 'John', 'David']);
  debugPrint('$names');
  // final c = List<dynamic>.filled(5, 0); // fixed- length - list
  // debugPrint("$c");

  // var : 타입추론
  // dynamic : 여러타입으로 지정될 수 있을때
  // var number2 = <dynamic> [];
  // var a = List.empty(growable: true); // growable list

  // fixed- length - list
  // growable list
  // List.geneate, List.filled

  String name = 'Alex';
  debugPrint(name);
  debugPrint("Hey, $name What's UP?"); // interpolation

  // Person p1 = Person('alex', 2, 'male');
  Person p1 = Person(name: 'alex', age: 2, sex: 'male'); // namedArgument
  print((p1.age));
  runApp(const MyApp());
}

// collection and generic
// collection : 데이터를 모아서 가지고 있는 자료구조, List , Set , Map  // cpp: container
// generic : collection이 가지고 있는 데이터들의 데이터 타입을 지정 // <string>, <int> // cpp 자료형
// generic type : cpp 템플릿
// array == List

// BuildContext
// A handle to the location of a widget in the widget tree.
// 현재 위젯의 위젯트리상의 위치에 관한 정보를 담고있는 변수
// 모든 Widget은 내부에 build method를 가지고 있다는 것
// build 메소드를 통해서 위젯을 반환하고 그 안에 buildcontext를 집어넣는다.
// Of 함수
// of함수는 현재 위젯의 위쪽 방향으로 가장 가까운 위젯을 찾는 함수이다
// Scaffold.of(context)
// 현재 context 기준에서 위젯트리 위쪽 방향으로 가장 가까운 Scaffold를 찾아라
// Each widget has its own BuildContext, which becomes the parent of the widget returned by the StatelessWidget.build or State.build function
// 모든 위젯은 자신만의 BuildContext를 가지고 있고, 그것은 StatelessWidget.build or State.build에 의해 반환되는 위젯의 부모가 된다.
// Widget
// build method
// Widget1 - Widget2 - Widget3 : 계층구조
// Widget build(BuildContext context) : Widget 타입, BuildContext context( MyApp 위젯의 정보, 위치 정보) 인자값, return MaterialApp MaterialApp을 리턴

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "sunshine",
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/s': (context) => const SecondPage(),
        '/t': (context) => const ThirdPage(),
        '/f': (context) => const FouthPage(),
        '/ff': (context) => const FifthPage(),
      },
    );
  }
}
