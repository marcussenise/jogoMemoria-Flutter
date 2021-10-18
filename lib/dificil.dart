import 'package:flutter/material.dart';
import 'package:jogomemoria/tile_model.dart';
import 'data.dart';
import 'main.dart';

class Dificil extends StatefulWidget {
  @override
  _DificilState createState() => _DificilState();
}

class _DificilState extends State<Dificil> {
  List<TileModel> gridViewTiles = [];
  List<TileModel> questionPairs = [];

  @override
  void initState() {
    super.initState();
    reStart();
  }

  void reStart() {
    myPairs = getPairs();
    myPairs.shuffle();
    gridViewTiles = myPairs;
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        questionPairs = getQuestionPairs();
        gridViewTiles = questionPairs;
        selected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: corPrimaria,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                pontos = 0;
                jogadas = 0;
                reStart();
              });
            },
          ),
        ),
        body: Container(
          child: Column(children: [
            SizedBox(height: 20),
            pontos != 1000
                ? Column(children: [
                    Text(
                      "$pontos/1000 pontos",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('$jogadas jogadas',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ))
                  ])
                : Container(),
            SizedBox(height: 20),
            pontos != 1000
                ? GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      // maxCrossAxisExtent: 120,
                      // crossAxisSpacing: 5.0,
                      // mainAxisSpacing: 5.0,
                    ),
                    children: List.generate(20, (index) {
                      return Tile(
                        imagePathUrl: gridViewTiles[index].getImageAssetPath(),
                        tileIndex: index,
                        parent: this,
                      );
                    }),
                  )
                : Expanded(
                    flex: 3,
                    child: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Parabéns! Você acertou em $jogadas jogadas!",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            )),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pontos = 0;
                              jogadas = 0;
                              reStart();
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 200,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.yellow.shade400, width: 2),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Text(
                              'Recomeçar',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    )),
                  )
          ]),
        ));
  }
}

class Tile extends StatefulWidget {
  String imagePathUrl;
  int tileIndex;
  _DificilState parent;

  Tile(
      {required this.imagePathUrl,
      required this.tileIndex,
      required this.parent});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          setState(() {
            myPairs[widget.tileIndex].setIsSelected(true);
          });
          if (selectedTile != "") {
            /// testing if the selected tiles are same
            if (selectedTile == myPairs[widget.tileIndex].getImageAssetPath()) {
              pontos = pontos + 100;
              jogadas += 1;

              selected = true;
              Future.delayed(const Duration(seconds: 1), () {
                this.widget.parent.setState(() {});
                setState(() {
                  selected = false;
                });
                selectedTile = "";
              });
            } else {
              selected = true;
              jogadas += 1;

              Future.delayed(const Duration(seconds: 1), () {
                this.widget.parent.setState(() {
                  myPairs[widget.tileIndex].setIsSelected(false);
                  myPairs[selectedIndex].setIsSelected(false);
                });
                setState(() {
                  selected = false;
                });
              });

              selectedTile = "";
            }
          } else {
            setState(() {
              selectedTile = myPairs[widget.tileIndex].getImageAssetPath();
              selectedIndex = widget.tileIndex;
            });
          }
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: myPairs[widget.tileIndex].getImageAssetPath() != ""
            ? Image.asset(myPairs[widget.tileIndex].getIsSelected()
                ? myPairs[widget.tileIndex].getImageAssetPath()
                : widget.imagePathUrl)
            : Container(),
      ),
    );
  }
}
