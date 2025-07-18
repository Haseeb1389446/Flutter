import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text(
            "Multi Child Widgets",
            style: TextStyle(color: Colors.white),
          ),
        ),

        // Row

        // body: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       Container(
        //         alignment: Alignment.center,
        //         height: 500,
        //         width: 800,
        //         color: Colors.lightGreen,
        //         child: Text("Box 1"),
        //       ),
        //       Container(
        //         alignment: Alignment.center,
        //         height: 500,
        //         width: 800,
        //         color: Colors.lightGreenAccent,
        //         child: Text("Box 2"),
        //       ),
        //       Container(
        //         alignment: Alignment.center,
        //         height: 500,
        //         width: 800,
        //         color: Colors.greenAccent,
        //         child: Text("Box 3"),
        //       ),
        //     ],
        //   ),
        // ),

        // Column

        // body: SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child: Column(
        //     children: [
        //       Container(
        //         alignment: Alignment.center,
        //         height: 500,
        //         width: 800,
        //         color: Colors.lightGreen,
        //         child: Text("Box 1"),
        //       ),
        //       Container(
        //         alignment: Alignment.center,
        //         height: 500,
        //         width: 800,
        //         color: Colors.lightGreenAccent,
        //         child: Text("Box 2"),
        //       ),
        //       Container(
        //         alignment: Alignment.center,
        //         height: 500,
        //         width: 800,
        //         color: Colors.greenAccent,
        //         child: Text("Box 3"),
        //       ),
        //     ],
        //   ),
        // ),

        // Stack

        // body: Stack(
        //     children: [
        //       Positioned(
        //         top: 0,
        //         left: 150,
        //         bottom: 100,
        //         child: Container(
        //           alignment: Alignment.center,
        //           height: 300,
        //           width: 300,
        //           color: Colors.yellowAccent,
        //           child: Text("Box 1"),
        //         ),
        //       ),
        //       Positioned(
        //         top: 0,
        //         left: 150,
        //         child: Container(
        //           alignment: Alignment.center,
        //           height: 300,
        //           width: 300,
        //           color: Colors.lightGreen,
        //           child: Text("Box 2"),
        //         ),
        //       ),
        //       Positioned(
        //         top: 0,
        //         left: 0,
        //         bottom: 100,
        //         child: Container(
        //           alignment: Alignment.center,
        //           height: 300,
        //           width: 300,
        //           color: Colors.lightGreenAccent,
        //           child: Text("Box 3"),
        //         ),
        //       ),
        //       Positioned(
        //         top: 0,
        //         left: 0,
        //         child: Container(
        //           alignment: Alignment.center,
        //           height: 300,
        //           width: 300,
        //           color: Colors.greenAccent,
        //           child: Text("Box 4"),
        //         ),
        //       ),
        //     ],
        //   ),

        body: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.yellowAccent,
                child: Text("Box 3"),
            ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.lightGreen,
                child: Text("Box 1"),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.lightGreenAccent,
                child: Text("Box 2"),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.greenAccent,
                child: Text("Box 4"),
              ),
          ],
        ),
      ),
    ),
  );
}
