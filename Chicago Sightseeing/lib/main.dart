import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chicago Sightseeing App',
        routes:{'/main': (context) => MyHomePage(),},
        theme: ThemeData.dark(),
        initialRoute: '/main');
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  static List<Tab> myTabs = <Tab>[
    Tab(text:'Neighborhoods'),
    Tab(text: 'Events'),
    Tab(text: 'Sports')
  ];


  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Welcome to Chicago", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w700, fontFamily: 'Raleway', color: Colors.white),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/ChicagoSkyline.jpeg'), fit: BoxFit.fill,  ),),),
          bottom: TabBar(controller: _tabController,tabs: myTabs,labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900) , ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),

      body: TabBarView(controller: _tabController,children: <Widget>[
        GridView.count(
          crossAxisCount: 2,
          children:
          <Widget>[
            Center(child:
            Container(
              child: Hero(
                tag: 'Neighborhood1',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(  image: AssetImage('assets/images/LincolnPark.jpeg'), fit: BoxFit.cover,   ),
                  ),),
                  onPressed: () async {await Navigator.push(context, MaterialPageRoute(builder: (context)=>  NEIGHBORHOOD1()));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape:  CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrangeAccent,
                      offset: const Offset(5.0, 7.0,),
                      blurRadius: 12.0,
                      spreadRadius: 0.0,),
                  ]
              )
              ,),
            ),
            Center(child: Text("Lincoln Park",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent),)),

            Center(child:
            Container(
              child: Hero(
                tag: 'Neighborhood2',
                child:(ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/LakeView.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {await Navigator.push(context, MaterialPageRoute(builder: (context)=>  NEIGHBORHOOD2()));},
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), )),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrangeAccent,
                      offset: const Offset(5.0, 7.0,),
                      blurRadius: 12.0,
                      spreadRadius: 0.0,),
                  ]
              )
              ,),
            ),
            Center(child: Text("Lake View",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic, color: Colors.orangeAccent),)),

            Center(child:
            Container(
              child: Hero(
                tag: 'Neighborhood3',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/HydePark.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {await Navigator.push(context, MaterialPageRoute(builder: (context)=>  NEIGHBORHOOD3()));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrangeAccent,
                      offset: const Offset(5.0, 7.0,),
                      blurRadius: 12.0,
                      spreadRadius: 0.0,),
                  ]
              )
              ,),),
            Center(child: Text("Hyde Park",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent),)),],),


        GridView.count(
          crossAxisCount: 2,
          children:<Widget>[
            Center(child:
            Container(
              child: Hero(
                tag: 'Event1',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(  image: AssetImage('assets/images/ManAndMoon.jpeg'), fit: BoxFit.cover,   ),
                  ),),
                  onPressed: () async {await Navigator.push(context, MaterialPageRoute(builder: (context)=>  EVENTS1()));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape:  CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrangeAccent,
                      offset: const Offset(5.0, 7.0,),
                      blurRadius: 12.0,
                      spreadRadius: 0.0,),
                  ]
              )
              ,),
            ),
            Center(child: Text("Man and Moon",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic, color: Colors.orangeAccent),)),

            Center(child:
            Container(
              child: Hero(
                tag: 'Event2',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/PinballExpo.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {await Navigator.push(context, MaterialPageRoute(builder: (context)=>  EVENTS2()));},
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrangeAccent,
                      offset: const Offset(5.0, 7.0,),
                      blurRadius: 12.0,
                      spreadRadius: 0.0,),
                  ]
              )
              ,),
            ),
            Center(child: Text("Pinball Expo",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic, color: Colors.orangeAccent),)),

            Center(child:Container(
              child: Hero(
                tag: 'Event3',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/IceAge.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {await Navigator.push(context, MaterialPageRoute(builder: (context)=>  EVENTS3()));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrangeAccent,
                      offset: const Offset(5.0, 7.0,),
                      blurRadius: 12.0,
                      spreadRadius: 0.0,),
                  ]
              )
              ,),),
            Center(child: Text("Ice Age Giants",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent),)),],),


        GridView.count(
          crossAxisCount: 2,
          children:<Widget>[
            Center(child:
            Container(
              child: Hero(
                tag: 'Sports1',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(  image: AssetImage('assets/images/ChicagoBulls.jpeg'), fit: BoxFit.cover,   ),
                  ),),
                  onPressed: () async {await Navigator.push(context, MaterialPageRoute(builder: (context)=>  SPORTS1()));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape:  CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrangeAccent,
                      offset: const Offset(5.0, 7.0,),
                      blurRadius: 12.0,
                      spreadRadius: 0.0,),
                  ]
              )
              ,),
            ),
            Center(child: Text("The Chicago Bulls",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent),)),

            Center(child:
            Container(
              child: Hero(
                tag: 'Sports2',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/ChicagoCubs.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {await Navigator.push(context, MaterialPageRoute(builder: (context)=>  SPORTS2()));},
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrangeAccent,
                      offset: const Offset(5.0, 7.0,),
                      blurRadius: 12.0,
                      spreadRadius: 0.0,),
                  ]
              )
              ,),
            ),
            Center(child: Text("The Chicago Cubs",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent),)),

            Center(child:
            Container(
              child: Hero(
                tag: 'Sports3',
                child:ElevatedButton(
                  child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('assets/images/ChicagoBlackhawks.jpeg'), fit: BoxFit.cover,  ),
                  ),),
                  onPressed: ()async {await Navigator.push(context, MaterialPageRoute(builder: (context)=>  SPORTS3()));},
                  style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                    side: BorderSide(width: 2.0, color: Colors.white,),
                    fixedSize: const Size(120, 120),
                    shape: const CircleBorder(),
                  ), ),
              ),
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepOrangeAccent,
                      offset: const Offset(5.0, 7.0,),
                      blurRadius: 12.0,
                      spreadRadius: 0.0,),
                  ]
              )
              ,),),
            Center(child: Text("The Chicago Blackhawks",style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent),)),],),
      ]),
    );
  }
}


class NEIGHBORHOOD1 extends StatefulWidget {
  NEIGHBORHOOD1({ Key? key }) : super(key: key);
  @override
  State<NEIGHBORHOOD1> createState() => _NEIGHBORHOOD1();
}
class _NEIGHBORHOOD1 extends State<NEIGHBORHOOD1>
{


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Lincoln Park", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500, fontFamily: 'Raleway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/ChicagoSkyline.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nLincoln Park\n", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent) ,),

              Container(
                child: Hero(
                  tag: 'Neighborhood1',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/LincolnPark.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrangeAccent,
                        offset: const Offset(5.0, 7.0,),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,),
                    ]
                )
                ,), Text("\n\nLincoln Park is a designated community area on the North Side of Chicago, Illinois. Lying to the west of Lincoln Park, Chicago's largest park, it is one of the most affluent neighborhoods in Chicago.\n"
                  "Address: Lincoln Park, Chicago, IL 60614-4707\n", style: TextStyle(fontSize: 15)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Trivia'),
              content: Text('What really sets Lincoln Park apart is the area’s namesake park. That’s where you’ll find lushly landscaped grounds, the Lakefront Trail, Lincoln Park Zoo, Lincoln Park Conservatory, North Avenue Beach, Peggy Notebaert Nature Museum, Chicago History Museum, Nature Boardwalk, Farm in the Zoo, Theater on the Lake — there’s enough here to spend an entire day (or weekend, or week) exploring. \n '
                  'Lincoln Park is also a shopper’s paradise. The charming area around Armitage and Halsted is where you’ll find tons of beautiful boutiques lined up in historic row homes. Create a custom leather bag at Laudi Vidni, find unique decor at Art Effects, or stock up on locally made snacks at Foxtrot Market. \n '
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
        );
      }, child: const Icon(Icons.info),),
    );
  }
}


class NEIGHBORHOOD2 extends StatefulWidget {
  NEIGHBORHOOD2({ Key? key }) : super(key: key);
  @override
  State<NEIGHBORHOOD2> createState() => _NEIGHBORHOOD2();
}
class _NEIGHBORHOOD2 extends State<NEIGHBORHOOD2>
{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Lake View", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500, fontFamily: 'Raleway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/ChicagoSkyline.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nLake View\n", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent) ,),

              Container(
                child: Hero(
                  tag: 'Neighborhood2',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/LakeView.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrangeAccent,
                        offset: const Offset(5.0, 7.0,),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,),
                    ]
                )
                ,), Text("\n\nLakeview’s laidback atmosphere, convenient walkability, and picture-perfect shoreline make it a favorite hang out among locals. And spots like lively Wrigleyville and the Belmont Theater District make it a major entertainment hub, too.\n"
                  "Address: Lakeview, Chicago, IL-60657\n", style: TextStyle(fontSize: 15)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Trivia'),
              content: Text('Anchored by a beautiful stretch of shoreline to the east, Lakeview melds several distinct areas — East Lakeview, Central Lakeview, Northalsted, and Wrigleyville. Each spot offers something unique, but they’re all pulled together by Lakeview’s casual, welcoming feel.\n'
                  'Hit the bustling shopping districts along Broadway in East Lakeview, along Belmont near Boystown, and the bustling Southport Corridor for local boutiques, record shops, and vintage treasure hunting.\n'
                  'Live it up with the locals at the seemingly endless array of much-loved bars and restaurants, from Michelin-awarded spots to beloved local taverns. Drew’s on Halsted has American bistro fare and a popular patio, Chilam Balam is an under-the-radar BYOB spot for Mexican shared plates, Dear Margaret has earned Michelin acclaim for its French-Canadian cuisine, and BITES Asian Kitchen serves up sushi, ramen, baos, and Asian-inspired tapas.'
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
        );
      }, child: const Icon(Icons.info),),
    );
  }
}


class NEIGHBORHOOD3 extends StatefulWidget {
  NEIGHBORHOOD3({ Key? key }) : super(key: key);
  @override
  State<NEIGHBORHOOD3> createState() => _NEIGHBORHOOD3();
}
class _NEIGHBORHOOD3 extends State<NEIGHBORHOOD3>
{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Hyde Park", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w500, fontFamily: 'Raleway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/ChicagoSkyline.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nHyde Park\n", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic, color: Colors.orangeAccent) ,),

              Container(
                child: Hero(
                  tag: 'Neighborhood3',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/HydePark.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrangeAccent,
                        offset: const Offset(5.0, 7.0,),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,),
                    ]
                )
                ,), Text("\n\nThis culturally rich neighborhood is bookended by two of the city’s most significant institutions — the University of Chicago to the west and the Museum of Science and Industry to the east.\n "
                  "Address: Hyde Park, Chicago, IL 60637\n", style: TextStyle(fontSize: 15)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Trivia'),
            content: Text('on the University of Chicago campus, you’ll find striking Gothic architecture, the free Smart Museum of Art, the Oriental Institute, the Court Theatre, and more. The university is known for world-changing discoveries, like the world’s first artificial nuclear reactor that was built below the school’s football stadium.\n'
                'The neighborhood’s cultural contributions don’t end there. It’s home to one of the most iconic masterpieces in American architectural design — Frank Lloyd Wright’s Robie House, a UNESCO World Heritage Site. Admire the striking facade or take a tour of the meticulously restored interior.'
            ),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          )
        );
      }, child: const Icon(Icons.info),),
    );
  }
}


class EVENTS1 extends StatefulWidget {
  EVENTS1({ Key? key }) : super(key: key);
  @override
  State<EVENTS1> createState() => _EVENTS1();
}
class _EVENTS1 extends State<EVENTS1>
{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Man and Moon", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w500, fontFamily: 'Raleway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/ChicagoSkyline.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nMan and Moon\n", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent) ,),

              Container(
                child: Hero(
                  tag: 'Event1',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/ManAndMoon.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrangeAccent,
                        offset: const Offset(5.0, 7.0,),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,),
                    ]
                )
                ,), Text("\n\nSan Diego-based Siena Marilyn Ledger’s National New Play Network rolling world premiere Man and Moon runs October 19-November 13, 2022, at Madison Street Theater\n"
                  "Address: 1010 Madison Street Oak Park,60302\n", style: TextStyle(fontSize: 15)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Trivia'),
              content: Text('Aaron, a transitioning man, meets Luna, a twelve-year-old girl with a deep passion for outer space, in the waiting room of a hospital’s Oncology Unit. Together they learn how to wait––navigating each their own changing bodies and lives as they fit within the context of space and time. Over games of Go Fish,\n'
                  'Aaron and Luna share with each other their dreams and fears, their humor, and their heart. In this new work, playwright Siena Marilyn Ledger takes us on a journey through the solar system without ever leaving the theatre. With spot on dialogue and smart characterization, Ledger helps us all grapple with our place within it all.'
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
        );
      }, child: const Icon(Icons.info),),
    );
  }
}

class EVENTS2 extends StatefulWidget {
  EVENTS2({ Key? key }) : super(key: key);
  @override
  State<EVENTS2> createState() => _EVENTS2();
}
class _EVENTS2 extends State<EVENTS2>
{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Pinball Expo", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w500, fontFamily: 'Raleway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/ChicagoSkyline.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nPinball Expo\n", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent) ,),

              Container(
                child: Hero(
                  tag: 'Event2',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/PinballExpo.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrangeAccent,
                        offset: const Offset(5.0, 7.0,),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,),
                    ]
                )
                ,), Text("\n\nThe world’s first, biggest, and longest running pinball show, Pinball Expo, is bouncing back for the 38th year! From Wednesday, October 19 through Saturday, October 22,\n"
                  "Address: Renaissance Schaumburg Convention Center Hotel, 1551 N. Thoreau Dr.Schaumburg, 60173\n", style: TextStyle(fontSize: 15)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Trivia'),
              content: Text('PINBALL EXPO IS THE BRAIN CHILD OF ROB BERK WHO GREW UP PLAYING PINBALL.\n'
                  'His dream was to recognize his heroes – the pinball designers and artists that created the games he loved. With the help of Bill Kurtz and Mike Pacak, Pinball Expo became a reality taking place in Chicago, the home of pinball. Founded in 1985, Pinball Expo is the longest-running event dedicated to pinball.'
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
        );
      }, child: const Icon(Icons.info),),
    );
  }
}

class EVENTS3 extends StatefulWidget {
  EVENTS3({ Key? key }) : super(key: key);
  @override

  State<EVENTS3> createState() => _EVENTS3();
}
class _EVENTS3 extends State<EVENTS3>
{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("Ice Age Giants", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700, fontFamily: 'Raleway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/ChicagoSkyline.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nIce Age Giants\n", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic, color: Colors.orangeAccent) ,),

              Container(
                child: Hero(
                  tag: 'Event3',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/IceAge.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrangeAccent,
                        offset: const Offset(5.0, 9.0,),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,),
                    ]
                )
                ,), Text("\n\nThroughout the 216-acre park at Brookfield Zoo, guests will encounter more than 30 life-sized animatronic re-creations of giants that once roamed North America and Eurasia.\n"
                  "Address: Brookfield Zoo/Chicago Zoological Society, 8400 W 31st St Brookfield,IL60513\n", style: TextStyle(fontSize: 15)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Trivia'),
              content: Text('This summer, Brookfield Zoo and Dino Don Inc. are unleashing more than 30 life-sized, animatronic re-creations of giants that had roamed North America and Eurasia during the Ice Age. They will include the following giants:\n'
                  '-Mastodon (18 feet long)\n'
                  '-Woolly mammoth (15 feet tall)\n '
                  '-Giant ground sloths (20 feet long)\n '
                  '-Giant rodent (10 feet long)\n '
                  '-Short-faced bear (11 feet long)\n '
                  '-Giant ape (10 feet tall)\n '
                  '-Saber-toothed cat (5 feet long)\n '
                  '-Giant bird (12 feet tall)\n '
                  'The displays creator, Don Lessem, CEO of Dino Don, Inc., has been digging, reconstructing, writing about, and roboticizing dinosaurs and other creatures from the past for 30 years. '
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
        );
      }, child: const Icon(Icons.info),),
    );
  }
}



class SPORTS1 extends StatefulWidget {
  SPORTS1({ Key? key }) : super(key: key);
  @override
  State<SPORTS1> createState() => _SPORTS1();
}
class _SPORTS1 extends State<SPORTS1>
{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("The Chicago Bulls", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500, fontFamily: 'Raleway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/ChicagoSkyline.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nThe Chicago Bulls\n", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic, color: Colors.orangeAccent) ,),

              Container(
                child: Hero(
                  tag: 'Sports1',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/ChicagoBulls.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrangeAccent,
                        offset: const Offset(5.0, 7.0,),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,),
                    ]
                )
                ,), Text("\n\n\nThe Chicago Bulls are an American professional basketball team based in Chicago. The Bulls compete in the National Basketball Association as a member of the league's Eastern Conference Central Division.\n"
                  "Address: United Center, 1901 W Madison St, Chicago, IL 60612\n", style: TextStyle(fontSize: 15)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Trivia'),
              content: Text('The Bulls were founded in 1966, as the third NBA franchise in Chicago, after the Stags and the Packers-Zephyrs.\n'
                  'In their first season, the Bulls managed to reach the playoffs, and they’re the only team to ever do so.\n'
                  'In 1992,  the Bulls and the Blackhawks (NHL) made it to the finals, NBA and Stanley Cup. The Bulls became champion, but the Blackhawks lost the Finals.\n'
                  'The Bulls were the first team to win more than 70 games in a season. Steve Kerr was part of the Bulls team as a player when they won 72 games in a single season and set the record, but he was the coach of the Golden State Warriors when they broke that record.\n'
                  'Derrick Rose is one of the two MVP’s of the Bulls, together with five time MVP Michael Jordan.\n'
                  'The Bulls have won six titles in two three-peats, and Jordan and Scottie Pippen were the only players to be on the team for all titles.\n'
                  'They have never lost a Finals, but they’ve also never reached one before 1991 and after 1998.\n'
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
        );
      }, child: const Icon(Icons.info),),
    );
  }
}


class SPORTS2 extends StatefulWidget {
  SPORTS2({ Key? key }) : super(key: key);
  @override
  State<SPORTS2> createState() => _SPORTS2();
}
class _SPORTS2 extends State<SPORTS2>
{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("The Chicago Cubs", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500, fontFamily: 'Raleway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/ChicagoSkyline.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nThe Chicago Cubs\n", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent) ,),

              Container(
                child: Hero(
                  tag: 'Sports2',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/ChicagoCubs.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrangeAccent,
                        offset: const Offset(5.0, 7.0,),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,),
                    ]
                )
                ,), Text("\n\n\nThe Chicago Cubs are an American professional baseball team based in Chicago. The Cubs compete in Major League Baseball as part of the National League Central division. The club plays its home games at Wrigley Field, which is located on Chicago's North Side.\n"
                  "Address: 1060 W Addison St, Chicago, IL 60613\n", style: TextStyle(fontSize: 15)),
            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Trivia'),
              content: Text('The Cubs started in 1876 as the Chicago White Stockings and were also named the Colts (1890-1897) and Orphans (1898-1902) before becoming the Cubs in 1903\n'
                  'They also had an alleged curse hanging over their heads for more than 70 years. The start of the curse came during the 1945 World Series when, during Game 4, Billy Goat Tavern owner William Sianis put a curse on the Cubs after he and his pet goat were forced to leave Wrigley Field.\n'
                  'The Cubs lost the 1945 World Series and didn’t play in another World Series until they won it all in 2016.\n'
                  'In total, the Cubs have won 17 National League pennants. They competed in the National League’s East Division from 1969 to 1993 before joining the Central Division in 1994, where they’ve stayed since.\n'
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
        );
      }, child: const Icon(Icons.info),),
    );
  }
}

class SPORTS3 extends StatefulWidget {
  SPORTS3({ Key? key }) : super(key: key);
  @override
  State<SPORTS3> createState() => _SPORTS3();
}
class _SPORTS3 extends State<SPORTS3>
{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.square(200),
        child: AppBar(
          title: Text("The Chicago Blackhawks", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500, fontFamily: 'Raleway'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)) ,
              image: DecorationImage(image: AssetImage('assets/images/ChicagoSkyline.jpeg'), fit: BoxFit.fill,  ),),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( topLeft: Radius.circular(40), topRight: Radius.circular(40), bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))),
        ),
      ),
      body: WillPopScope( onWillPop: () async{ Navigator.pop(context); return true;},
        child:Center(
          child: Column(
            children: <Widget>[Text("\n\nThe Chicago Blackhawks\n", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, fontFamily: 'Raleway', fontStyle: FontStyle.italic,  color: Colors.orangeAccent) ,),

              Container(
                child: Hero(
                  tag: 'Sports3',
                  child:ElevatedButton(
                    child: Container( decoration: BoxDecoration( shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/images/ChicagoBlackhawks.jpeg'), fit: BoxFit.fill,  ),
                    ),),
                    onPressed: (){},
                    style: ElevatedButton.styleFrom( padding: EdgeInsets.zero,
                      side: BorderSide(width: 2.0, color: Colors.white,),
                      fixedSize: const Size(200, 150),
                      shape: const CircleBorder(),
                    ), ),
                ),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(75),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepOrangeAccent,
                        offset: const Offset(5.0, 7.0,),
                        blurRadius: 12.0,
                        spreadRadius: 0.0,),
                    ]
                )
                ,), Text("\n\nThe Chicago Blackhawks are a professional ice hockey team based in Chicago. The Blackhawks compete in the National Hockey League as a member of the Central Division in the Western Conference.\n"
                  "Address: United Center, 1901 W Madison St, Chicago, IL 60612\n", style: TextStyle(fontSize: 18)),

            ],

          ),
        ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Trivia'),
              content: Text('The Chicago Blackhawks joined the National Hockey League in 1926 as part of the Leagues first wave of expansion into the U.S. Along with the Blackhawks, the Detroit Cougars (currently the Red Wings) and the New York Rangers were also part of that first wave.\n'
                  ' The team got the name the "Black Hawks" from owner Frederic McLaughlin. He was a commander with the 333rd Machine Gun Battalion of the 86th Infantry Division during World War II.\n'
                  'The Division was nicknamed "Blackhawk Division" after Chief Blackhawk who was a prominent figure in the history of Illinois. Under the ownership of McLaughlin, the Blackhawks became the NHLs first team with an all-American born starting lineup.\n'
              ),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            )
        );
      }, child: const Icon(Icons.info),),
    );
  }
}