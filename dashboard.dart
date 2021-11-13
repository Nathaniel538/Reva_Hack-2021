

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:warehouse_management_system/Employee/job_description.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Dashboard"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                // itemExtent: 70.0,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                addAutomaticKeepAlives: false,
                cacheExtent: 100.0,
                padding: EdgeInsets.all(40),
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push( context, MaterialPageRoute(builder: (context) => const JobDescription())),
                    child: Card(
                      shadowColor: Colors.blueAccent,elevation: 20,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        title: Text("Job 1"),
                        subtitle: Text("Job Type \n DeadLine"),
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.blueAccent,elevation: 20,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text("Job 2"),
                      subtitle: Text("Job Type \n DeadLine"),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.blueAccent,elevation: 20,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text("Job 3"),
                      subtitle: Text("Job Type \n DeadLine"),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.blueAccent,elevation: 20,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text("Job 4"),
                      subtitle: Text("Job Type \n DeadLine"),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.blueAccent,elevation: 20,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text("Job 5"),
                      subtitle: Text("Job Type \n DeadLine"),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.blueAccent,elevation: 20,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text("Job 6"),
                      subtitle: Text("Job Type \n DeadLine"),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.blueAccent,elevation: 20,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text("Job 7"),
                      subtitle: Text("Job Type \n DeadLine"),
                    ),
                  ),Card(
                    shadowColor: Colors.blueAccent,elevation: 20,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text("Job 8"),
                      subtitle: Text("Job Type \n DeadLine"),
                    ),
                  ),Card(
                    shadowColor: Colors.blueAccent,elevation: 20,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text("Job 9"),
                      subtitle: Text("Job Type \n DeadLine"),
                    ),
                  ),Card(
                    shadowColor: Colors.blueAccent,elevation: 20,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text("Job 10"),
                      subtitle: Text("Job Type \n DeadLine"),
                    ),
                  ),Card(
                    shadowColor: Colors.blueAccent,elevation: 20,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text("Job 11"),
                      subtitle: Text("Job Type \n DeadLine"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
              child: ElevatedButton(
                  onPressed: () {
                    print("Submitted");
                  },
                  child: Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }
}
