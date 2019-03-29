import 'package:flutter/material.dart';
import 'package:plants/plantdetail.dart';

class PlantList extends StatefulWidget {
  @override
  _PlantListState createState() => _PlantListState();
}

class _PlantListState extends State<PlantList> {
  ScrollController _scrollController;

  List allDescriptions = [
    'Aloe vera is a very succelent plant of the genius Aloe. I don\'t think I really care just doing it for this purpose',
    'Well guy\'s, welcome to my TED Talk',
    'Some dummy text unrelated to life',
  ];

  String description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController =ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
     description =allDescriptions[0]; 
    });
  }

  changedesc(){
    var value =_scrollController.offset.round();
    var desIndex = (value/150).round();
    print(value);
    setState(() {
     description =allDescriptions[desIndex]; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(left: 25.0),
             controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getPlantCard(
                  './assets/whiteplant.png', '25', 'OUTDOOR', 'Aloe Vera'),
              SizedBox(
                width: 15.0,
              ),
              getPlantCard('./assets/smallplant.png', '25', 'INDOOR', 'Fiscus'),
              SizedBox(
                width: 15.0,
              ),
              getPlantCard(
                  './assets/whiteplant.png', '25', 'OUTDOOR', 'Aloe Vera')
            ],
          ),
        ),
       
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text('Description',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0, top: 10.0),
          child: Text(description,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }

  getPlantCard(
      String imgPath, String price, String plantType, String plantName) {
    return Stack(
      children: <Widget>[
        Container(
          height: 325.0,
          width: 225.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF399D63)),
            height: 250.0,
            width: 225.0,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'FROM',
                          style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          '\$' + price,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    )
                  ],
                ),
                Image(
                  image: AssetImage(imgPath),
                  height: 165.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          plantType,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8AC7A4)),
                        ),
                        Text(plantName,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ))
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF399D63),
                      ),
                      child: Icon(
                        Icons.wb_sunny,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF399D63),
                      ),
                      child: Icon(
                        Icons.wb_cloudy,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF399D63),
                      ),
                      child: Icon(
                        Icons.pin_drop,
                        color: Colors.white.withOpacity(0.4),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => PlantDetail() ));
                      },
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(color: Color(0xFF399D63)),
                        child: Icon(
                          Icons.power,
                          color: Colors.white.withOpacity(0.4),
                          size: 20.0,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 90.0, top: 300.0),
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0), color: Colors.black),
            child: Center(
              child: Icon(Icons.add_shopping_cart, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
