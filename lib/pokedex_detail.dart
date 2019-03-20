import 'package:flutter/material.dart';

class PokeDetail extends StatefulWidget {

  final img,name,heigth,weigth,types,weakness;

  const PokeDetail({Key key, this.img, this.name, this.heigth, this.weigth, this.types, this.weakness}) : super(key: key);


  @override
  _PokeDetailState createState() => _PokeDetailState();
}

class _PokeDetailState extends State<PokeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        title: Text("${widget.name}",
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),

      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            left: 10,
            child: Center(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width*.95,
                  height: MediaQuery.of(context).size.height*.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "${widget.name}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Heigth: ${widget.heigth}", style: TextStyle(fontSize: 18,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Weigth: ${widget.weigth}", style: TextStyle(fontSize: 18,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "TYPES", style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: widget.types.map<Widget>((t){
                            return FilterChip(
                              backgroundColor: Colors.yellowAccent,
                              label: Text("$t"),
                              labelStyle: TextStyle(color: Colors.black,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,

                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "WEAKNESS", style: TextStyle(fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,

                          child: Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            children: widget.weakness.map<Widget>((w){
                              return FilterChip(
                                onSelected: (bool durum){

                                },
                                label: Text("$w",style: TextStyle(
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                ),


                                ),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: MediaQuery.of(context).size.width/2 - 75,
              child: Image.network("${widget.img}",fit: BoxFit.fill,height: 150,width: 150,)),
        ],
      ),
    );
  }
}
