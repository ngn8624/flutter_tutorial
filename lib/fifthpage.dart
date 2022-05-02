// 매운맛

// state
// UI 가 변경되도록 영향을 미치는 데이터
// app 수준과 widget 수준의 데이터
// stateless widget : state가 변하지 않는 위젯
// widget tree - Element tree - Render tree
// widget tree : 하나의 설계도
// Element tree : widget tree, Render tree 연결
// widget tree 안의 하나하나의 widget 들이 하나하나의 widget element로 연결 (1:1 대응)
// Render tree : high level 시스템
// Element tree 의 하나하나의 element들을 하나하나의 Render object와 연결 (1:1대응)
// container widget <- 포인트 <- Container element

// reload vs rebuild
// 타이어 바꿀꺼냐 차바꿀꺼냐

// 위치나 타입 속성 등이 일치할 때에 한해서 reload
// 바뀐 부분만 render tree에서 다시 그려줌

// container widget(white->black) -> Hot reload -> build method -> widget tree rebuild -> element tree link update -> elemenet tree info -> render tree -> Render object re-rendering

// stateless 위젯은 rebuild만을 통해서 새로운 state 적용가능
// flutter 초당 60프레임

import 'package:flutter/material.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  State<FifthPage> createState() => _State();
}

class _State extends State<FifthPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    debugPrint('initstate is called');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    debugPrint('dispose is called');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build is called');
    return Scaffold(
      appBar: AppBar(
        title: const Text('lifecycle'),
      ),
    );
  }
}
