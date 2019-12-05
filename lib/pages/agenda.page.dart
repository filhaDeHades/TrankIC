import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text("TrankIC", style: TextStyle(color:Colors.purple,),
          ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          
          children: <Widget>[
            Text("Horário desejado", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 40.0),),
          
            
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
              SizedBox(width: 50, child: TextField(
                autofocus: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder( borderSide: BorderSide(color: Colors.purple)),
                ),
                maxLength: 1,
              ),  
              ),
              SizedBox(width: 50, child: TextField(
                autofocus: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                maxLength: 1,
              )
              ),
              Text(":",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(width: 50, child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                maxLength: 1,
              )),
              
             
              SizedBox(width: 50, child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                maxLength: 1,
              )),

              

            ],),

            

            Container(
              height: 60,
              width:300,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Colors.purple,
                    Colors.deepPurple,
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Checar Horário",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            
            
            
        
        
        ],
        
        
        
      ),),
    

      );
      
      
      }}