import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
      debugShowCheckedModeBanner: false,
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text('Hello Nikhil'),
        centerTitle: true,

      ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           setState(() {
             counter=counter+1;
           });
         },
         child: Icon(Icons.add)
       ),
      


      body: Padding(
         padding: const EdgeInsets.fromLTRB(10.0,15.0,10.0,50.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
              backgroundImage: AssetImage('Pictures/Flutterimage.png'),
              radius: 40.0,

          ),
            ),
            Divider(
              height: 60.0,
              color: Colors.black38,
            ),
            Text(
             'NAME',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
          ),
          ),
             SizedBox(height:10.0),
             Text(
               'NIKHIL GIRAMKAR',
               style: TextStyle(
                 fontSize: 28.0,
                 fontWeight: FontWeight.bold,
                 letterSpacing: 2.0,
                 color: Colors.amberAccent,
           ),
         ),
             SizedBox(height:30.0),
              Text(
              'Current Standard',
              style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              ),
              ),
              SizedBox(height:10.0),
              Text(
              '$counter',
              style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.amberAccent,
              ),
              ),
              SizedBox(height:30.0),
              Row(
                children: <Widget>[
                  Icon(
                      Icons.email,
                      color: Colors.grey[400],
                  ),
                   SizedBox(width:10.0,),
                   Text(
                     'niksgiramkar@gmail.com',
                    style: TextStyle(
                     letterSpacing: 1.0,
                     color: Colors.black,
                     fontSize: 18.0,
                     fontWeight: FontWeight.bold,
                   )
                 )
                ],
              )
            ],
          ),


    ),
    );
  }
}


