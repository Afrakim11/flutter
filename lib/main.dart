import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
 home: NinjaCard() ,
));
class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
    appBar:AppBar(
      title: Text('Ninja ID Card '),

      centerTitle: true,
      backgroundColor: Colors.pink[600],
      elevation: 0.0,

    ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel +=1;
          });

           },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
             Center(
              child:
              CircleAvatar(
                backgroundImage: AssetImage('assets/afra2.jeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.pink[100],
              thickness:2.0,

            ),
            Text(
                'NAme :',
              style: TextStyle(
                color: Colors.cyanAccent[100],
                wordSpacing:1.0 ,
                letterSpacing:2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Afra-Li ',
              style: TextStyle(
                color: Colors.pink[100],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                wordSpacing:1.0 ,
                letterSpacing:2.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'Current Ninja level : ',
              style: TextStyle(
                color: Colors.cyanAccent[100],
                wordSpacing:1.0 ,
                letterSpacing:2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '$ninjaLevel ',
              style: TextStyle(
                color: Colors.pink[100],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                wordSpacing:1.0 ,
                letterSpacing:2.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.pink[300],
                ),
                Text(
                  'afrakim.11@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(width: 10.0,),

              ],
            )
          ],
        ),

      ),
    );
  }
}






