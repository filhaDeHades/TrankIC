import 'package:flutter/material.dart';
import 'package:trank_ic/pages/agendada.page.dart';
import 'package:trank_ic/pages/agendar.page.dart';

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

  Widget callPage(int index){
    switch (index) {
      case 0: return AgendadaPage();
      case 1: return AgendarPage();
        
        break;
      default: return AgendadaPage();
    }
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "TrankIC",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:Text(
            "TrankIC",
            style: TextStyle(color:Colors.purple),
            ),
        ),
        body: callPage(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              title: Text('Agendadas')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alarm),
              title: Text('Agendar')
            )
          ],

          currentIndex: _selectedIndex,
          onTap: (value){
             _selectedIndex = value;
             setState(() {
               
             });
          },
          selectedItemColor: Colors.purple,
        ),
      )
    );
    
  }
}