import 'package:flutter/material.dart';
import 'models/Recipe..dart';
import 'package:lesson_1/Details_Page.dart';
class  MyHomePage extends StatelessWidget{
  static List<Recipe> list = [
    Recipe("Cobalt", "assets/images/cobalt1.png", "14000  ", "2007", "Sedan 2.5", "mexanika benzin " , "Olot 2 oktabr" ),
    Recipe("Audi A6", "assets/images/audi.png", "8000 ", " 2018  "  , "Sedan 3" ,"avtomat benzin " , "Beshkek 28 sentabr" ),
    Recipe("Volkswagen", "assets/images/volkswagen.png", "10500  ", "2015"  , "Sedan" ,"mexanika benzin ","Toshkent 28 sentabr"),
    Recipe("Lada Vesta", "assets/images/lada.png", "7590  ", "2020" , "Sedan 4" ,"avtomat  benzin " , "Tojikiston 1 mart"),
    Recipe("BMW", "assets/images/bmw.png", "29000  ", "2021", "Sedan 2" ,"avtomat  benzin " , "Andijan  20 dekabr"),
  ];

  BuildContext get context => context;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            tooltip: 'Open  add-circle',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.monetization_on_outlined),
            tooltip: 'Open  monetization_on',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Open  search',
            onPressed: () {
              // handle the press
            },
          ),
        ],
        title: const Text("Avto elon",
           textAlign: TextAlign.center,
         style: TextStyle(
            fontSize: 23.0,
           fontWeight: FontWeight.normal,
           color: Colors.white
         ),
         ),

      ),
      body:  ListView(
        children: <Widget>[
          myCard(list[0],context),
          myCard(list[1],context),
          myCard(list[2],context),
          myCard(list[3],context),
          myCard(list[4],context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.navigation,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        onPressed:(){
          debugPrint("Float Action Button got pressed");
        }
      ),
    );
  }
  Widget myCard(Recipe recipe  , context) {

    return InkWell(
      onTap: (){
        Navigator.push(  context , MaterialPageRoute(builder: (context)=>
            DetailPage(recipe: recipe,), ), );
      },
      child: Card(
        elevation: 5.0,
        margin: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(2.0),
              width: 200.0,
              height: 200.0,
              child: Image.asset(recipe.ImageURL),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children:  <Widget>[
                  Text(recipe.model,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                      color: Colors.black,
                    ),
                  ),
                const  SizedBox(
                    height: 3.0,
                  ),
                  Text(recipe.About,
                  ),
                const  SizedBox(
                    height: 3.0,
                  ),
                  Text(recipe.comfort),
              const    SizedBox(
                    height: 3.0,
                  ),
                  Text(recipe.yoqilgi),
               const   SizedBox(
                    height: 3.0,
                  ),
                  Text(recipe.yili),
              const    SizedBox(
                    height: 3.0,
                  ),
                  Text(recipe.cost,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0
                    ),
                  ),
             const     SizedBox(
                    height: 3.0,
                  ),
                  const  Icon(

                    Icons.add_a_photo,

                  ),

                ],
              ),
            ),
          ],
        ),


      ),
    );

}


}

