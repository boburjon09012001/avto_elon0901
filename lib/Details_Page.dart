import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/Recipe..dart';

class DetailPage extends StatelessWidget {
  final Recipe recipe;

  const DetailPage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 21.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        title: Text(recipe.model),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.share,
              size: 21.0,
            ),
            tooltip: 'Open  add-circle',
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.star),
            tooltip: 'Open  monetization_on',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: 410.0,
                child: Image.asset(
                  recipe.ImageURL,
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    width: 25.0,
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 25.0,
                        height: 10.0,
                      ),
                      Text(
                        recipe.cost,
                        style: const TextStyle(
                          fontSize: 21.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "y.e",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 25.0,
                        height: 10.0,
                      ),
                      Text(
                        recipe.model,
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        recipe.yili,
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        recipe.About,
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              myItem(),
              cardInfo(),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(left: 10.0, right: 5.0, bottom: 10.0),
                    width: 190.0,
                    height: 45.0,
                    child: ElevatedButton(
                      onPressed: () {
                        showMyDialog2(context);
                      },
                      child: Text(
                        "Yozish",
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 5.0, right: 10.0, bottom: 10.0),
                    width: 190.0,
                    height: 45.0,
                    decoration: BoxDecoration(color: Colors.green),
                    child: ElevatedButton(


                      onPressed: () {
                         showMyDialog(context);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: Text("Qo'ng'iroq qilish"),

                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget myItem() {
    return Card(
      elevation: 20.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 55.0, left: 30.0),
            width: 200.0,
            height: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("Turi"),
                SizedBox(
                  height: 3.0,
                ),
                Text("Ishlab chiqarilgan yil"),
                SizedBox(
                  height: 3.0,
                ),
                Text("Kuzov"),
                SizedBox(
                  height: 3.0,
                ),
                Text("Uzatish qutisi"),
                SizedBox(
                  height: 3.0,
                ),
                Text("Vaqti"),
                SizedBox(
                  height: 5.0,
                ),
                Text("Narxi"),
                SizedBox(
                  height: 8.0,
                ),
                Text("Kuzatuvchilar"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  recipe.model,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  recipe.About,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(recipe.comfort),
                const SizedBox(
                  height: 3.0,
                ),
                Text(recipe.yoqilgi),
                const SizedBox(
                  height: 3.0,
                ),
                Text(recipe.yili),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  recipe.cost,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                const Icon(
                  Icons.add_a_photo,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardInfo() {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20.0, left: 30.0),
            width: 380.0,
            height: 250.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  "Optsiya va xarakteriska",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem libero alias fugit ipsum quod adipisci, temporibus amet delectus molestiae, sit iure dolorum necessitatibus doloribus quo ducimus repellendus expedita optio aut",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem libero alias fugit ipsum quod adipisci, temporibus amet delectus molestiae, sit iure dolorum necessitatibus doloribus quo ducimus repellendus expedita optio aut",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Future showMyDialog( BuildContext context){
    return showDialog(context: context, builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text("Call a phone"),
      content: Text("+998-90-222-35-11"),
      actions: [

        TextButton(onPressed: (){

        }, child: Text("Call now",
        style: TextStyle(
          color: Colors.green,
        ),
        )),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Cancel",
          style: TextStyle(
            color: Colors.red,
          ),
        )),
      ],
    ));
  }


  Future showMyDialog2( BuildContext context){
    return showDialog(context: context, builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(" Now chatting"),
      content: Text("bobir0901@gamil.com"),
      actions: [

        TextButton(onPressed: (){

        }, child: Text("Writing now",
          style: TextStyle(
            color: Colors.green,
          ),
        )),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Cancel",
          style: TextStyle(
            color: Colors.red,
          ),
        )),
      ],
    ));
  }


}
