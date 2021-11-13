import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardM extends StatefulWidget {
  const DashBoardM({Key? key}) : super(key: key);

  @override
  _DashBoardMState createState() => _DashBoardMState();
}

class _DashBoardMState extends State<DashBoardM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manager Dashboard"),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Expanded(
            //   child: ListView(
            //     children: <Widget>[
            //
            //     ],
            //   ),
            // ),
            // CustomScrollView(
            //   primary: false,
            //   slivers: <Widget>[
            //     SliverPadding(
            //       padding: const EdgeInsets.all(20),
            //       sliver: SliverGrid.count(
            //         crossAxisSpacing: 10,
            //         mainAxisSpacing: 10,
            //         crossAxisCount: 3,
            //         children: [
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             child: const Text("He'd have you all unravel at the"),
            //             color: Colors.green[100],
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             child: const Text('Heed not the rabble'),
            //             color: Colors.green[200],
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             child: const Text('Sound of screams but the'),
            //             color: Colors.green[300],
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             child: const Text('Who scream'),
            //             color: Colors.green[400],
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             child: const Text('Revolution is coming...'),
            //             color: Colors.green[500],
            //           ),
            //           Container(
            //             padding: const EdgeInsets.all(8),
            //             child: const Text('Revolution, they...'),
            //             color: Colors.green[600],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            Center(child: Text("Under Construction")),
          ],
        ),
      ),
    );
  }
}
