import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), (){
      return 'BangThan';
    });

    String bio = await Future.delayed(Duration(seconds: 2), (){
      return 'GG JUNGLE / GG CAPTAIN';
    });

    print('$username - $bio');
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getData();
    print('hi there');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Chọn một vị trí'),
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: OutlinedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
