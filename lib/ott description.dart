import 'package:flutter/material.dart';
import 'ott videoplayer.dart';
class ott3 extends StatefulWidget {
  const ott3({super.key});

  @override
  State<ott3> createState() => _ott3State();
}

class _ott3State extends State<ott3> {
  List a=[
    "assets/movies2.jpeg",
    "assets/movies9.jpeg",
    "assets/movies10.jpeg",
    "assets/movies4.jpeg",
    "assets/movies16.jpeg",
    "assets/movies6.jpeg",
  ];

  List b=[
    "assets/movies7.jpeg",
    "assets/movies8.jpeg",
    "assets/movies6.jpeg",
    "assets/movies17.jpeg",
    "assets/movies15.jpeg",
    "assets/movies12.jpeg",
  ];


   int currentindex= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
        backgroundColor: Colors.black,
         title: Container(
          height: 45,
          width: double.infinity,
           decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
             color: Colors.white,
           ),
          child:
          TextFormField(
           decoration: InputDecoration(
            border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
               hintText: "Search here",
              ),
            ),
         ),
        ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/movies12.jpeg"))),
              ),

              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text("Jai Bhim(tamil U/A)",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                  color: Colors.yellow,
                  height: 80,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ott4()),
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Watch The Movie \n For Free",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        )),
                  )),

              SizedBox(
                height: 15,
              ),

              Container(
                  color: Colors.blueGrey,
                  height: 80,
                  width: 350,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Wtch With Prime \n Start Your 30 - Day Trial",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))),

              SizedBox(
                height: 20,
              ),

              Container(
                height: 100,
                width: double.infinity,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  SizedBox(width:45,),
                  TextButton(
                    onPressed: () {},
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.play_circle_fill,color: Colors.grey,),
                          SizedBox(height: 5,),
                          Text("Trailer",style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 40,),

                  TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.watch_later_outlined,color: Colors.grey,),

                          SizedBox(height: 5,),

                          Text("Watchlist",style: TextStyle(color: Colors.white),)
                        ],
                      )),

                  SizedBox(width: 45,),

                  TextButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(Icons.share,color: Colors.grey,),
                          SizedBox(height: 5,),
                          Text("share",style: TextStyle(color: Colors.white),)
                        ],
                      )),
                ]),
              ),

              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text("A pregnant woman from a primitive tribal community searches despereately for her husband, who is missing from police custody.So as to find her husband and seek justice for them,a High Court advocate risk in\nsupport.Will their battle for justice succed?  ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white),),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.only(right:25),
                child: Text("Sentimental * Based on true story",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:Colors.white ),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right:320),
                child: Text("IMDb 8.5",
                  style: TextStyle(
                      color: Colors.grey),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right: 350),
                child: Text("2021",
                  style: TextStyle(
                      color: Colors.grey),),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(right:300),
                child: Text("Languages",
                  style: TextStyle(
                      color: Colors.blueAccent),),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text("Audio(4),Subtitles(4)",
                  style: TextStyle(
                      color: Colors.grey),),
              ),

              SizedBox(height: 15,),

              Container(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: b.length,
                    itemBuilder: (BuildContext context ,int index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 220,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image:AssetImage(b[index]),
                                      fit: BoxFit.fill)
                              ),
                              //child: Image.network(b[index],fit: f,),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(right: 190),
                              child: Text("Movies",style: TextStyle(fontSize: 6,fontWeight: FontWeight.bold,color: Colors.white),),
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),

              SizedBox(height: 5,),

              Container(
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: a.length,
                    itemBuilder: (BuildContext context ,int index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 220,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill)
                              ),

                              //    child: Image.network(d[index]),
                            ),
                            SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(right: 190),
                              child: Text("Movies",style: TextStyle(fontSize: 6,fontWeight: FontWeight.bold,color: Colors.white),),
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
     }
}
