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

        // ListView

        // body: ListView(
        // scrollDirection: Axis.horizontal,
        //   children: [
        //     Container(
        //         alignment: Alignment.center,
        //         height: 300,
        //         width: 300,
        //         color: Colors.yellowAccent,
        //         child: Text("Box 1"),
        //     ),
        //     Container(
        //         alignment: Alignment.center,
        //         height: 300,
        //         width: 300,
        //         color: Colors.lightGreen,
        //         child: Text("Box 2"),
        //       ),
        //     Container(
        //         alignment: Alignment.center,
        //         height: 300,
        //         width: 300,
        //         color: Colors.lightGreenAccent,
        //         child: Text("Box 3"),
        //       ),
        //     Container(
        //         alignment: Alignment.center,
        //         height: 300,
        //         width: 300,
        //         color: Colors.greenAccent,
        //         child: Text("Box 4"),
        //       ),
        //   ],
        // ),

        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10
            ),
          children: [
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                child: Image.asset('assets/images/img1.jpg'),
            ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                child: Image.asset('assets/images/img2.jpg'),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                child: Image.asset('assets/images/img3.jpg'),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                child: Image.asset('assets/images/img4.jpg'),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.lime,
                child: Text("Box 5"),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.limeAccent,
                child: Text("Box 6"),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.blueGrey,
                child: Text("Box 7"),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.yellow,
                child: Text("Box 8"),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1752801375943-f0cb633f3422?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw1fHx8ZW58MHx8fHx8'), 
                  fit: BoxFit.cover
                  )
                ),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1752859625900-a7fbeee9b8e3?q=80&w=1548&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  fit: BoxFit.cover
                  )
                ),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.blueGrey,
                child: Text("Box 11"),
              ),
            Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.yellow,
                child: Text("Box 12"),
              ),
          ],
        ),
      ),
    ),
  );
}
