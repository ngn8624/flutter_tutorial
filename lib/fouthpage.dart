import 'package:flutter/material.dart';

class FouthPage extends StatelessWidget {
  const FouthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                debugPrint('텍스트 onPressed 버튼입니다');
              },
              onLongPress: () {
                debugPrint('텍스트 onLongPress 입니다');
              },
              child: const Text(
                'Text Button',
                style: TextStyle(fontSize: 20.9),
              ),
              style: TextButton.styleFrom(
                primary: Colors.red,
                // backgroundColor: Colors.blue
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              child: const Text('ElevatedButton'),
              onPressed: () {
                debugPrint('ElevatedButton입니다');
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            const SizedBox(height: 10.0),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  elevation: 0.0,
                  side: const BorderSide(color: Colors.black87, width: 2.0),
                  primary: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              child: const Text('OutlinedButton'),
              onPressed: () {
                debugPrint('OutlinedButton 입니다');
              },
            ),
            const SizedBox(height: 10.0),
            TextButton.icon(
              // onPressed: () {
              //   debugPrint('TextButton.icon');
              // },
              onPressed: null,
              icon: const Icon(Icons.home, size: 10.0, color: Colors.blue),
              label: const Text('Go to Home'),
              style: OutlinedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.green,
                  minimumSize: const Size(200, 50),
                  onSurface: const Color.fromARGB(255, 238, 7, 7)),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              child: const Text('GO to the Second Page'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10.0),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: const EdgeInsets.all(10),
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Text Button',
                  ),
                ),
                ElevatedButton(
                  child: const Text('ElevatedButton'),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
