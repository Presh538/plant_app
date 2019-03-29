import 'package:flutter/material.dart';

class PlantDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xFF399D63)),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.0, left: MediaQuery.of(context).size.width - 60),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Color(0XFF4DA774),
                  mini: true,
                  elevation: 0.0,
                  child: Icon(
                    Icons.shopping_basket,
                    color: Colors.white,
                    size: 15.0,
                  ),
                ),
              ),
              Positioned(
                top: 10.0,
                left: MediaQuery.of(context).size.width - 30,
                child: Container(
                  height: 18.0,
                  width: 18.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Color(0xFF399D63), 
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'INDOOR',
                      style:TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color:Color(0xFF8AC7A4)
                      )
                    ),
                     Text(
                      'Ficus',
                      style:TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 32.0,
                        fontWeight: FontWeight.w600,
                        color:Colors.white
                      )
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      'FROM',
                      style:TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color:Color(0xFF8AC7A4)
                      )
                    ),
                     Text(
                      '\$30',
                      style:TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w100,
                        color:Colors.white
                      )
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      'SIZES',
                      style:TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color:Color(0xFF8AC7A4)
                      )
                    ),
                     Text(
                      'Small',
                      style:TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w100,
                        color:Colors.white
                      )
                    ),
                    SizedBox(height: 15.0,),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black
                      ),
                      child: Center(child: Icon(Icons.shopping_basket, color: Colors.white),),
                    )
                  ],
                ),
              ),
              Positioned(
                top:156,
                left:100,
                child: Image(
                  image: AssetImage('assets/ficus.png'),
                  fit: BoxFit.cover,
                  height: 250.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 400,
                  left: 20.0,
                  right: 15.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('All to know...',
                    style:TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    )
                    ),
                    SizedBox(height: 12.0,),
                    Text('Aloe vera is a very succelent plant of the genius Aloe. I don\'t think I really care just doing it for this purpose',
                    style:TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18.0
                    )
                    ),
                    SizedBox(height: 30.0,),
                   Text('Details',
                    style:TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    )
                    ),
                     SizedBox(height: 12.0,),
                    Text('Aloe vera is a very succelent plant of the genius Aloe. I don\'t think I really care just doing it for this purpose',
                    style:TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18.0
                    )
                    ), 
                  ],
                ),
              ) 
            ],
          )
        ],
      ),
    );
  }
}
