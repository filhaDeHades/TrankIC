import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrankIC',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget{
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _BottomBar createState() => _BottomBar();
}

class _BottomBar extends State<StatefulWidget>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Agendadas',
      style: optionStyle,
    ),
    Text(
      'Index 1: Agendar',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text(
          "TrankIC",
          style: TextStyle(color:Colors.purple,),
          ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            title: Text('Agendadas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alarm),
            title: Text('Agendar'),
          )
        ],
        currentIndex: 0,
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped,
      ),
    );
  }
}