import 'tile_model.dart';

String selectedTile = '';
int selectedIndex = 0;
bool selected = true;
int pontos = 0;
int jogadas = 0;

List<TileModel> myPairs = [];
List<TileModel> paresMedio = [];
List<TileModel> paresFacil = [];

List<bool> clicked = [];

List<TileModel> getPairs() {
  List<TileModel> pairs = [];
  TileModel tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git1.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git2.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git3.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git4.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git5.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git6.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git7.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git8.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git9.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git10.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  return pairs;
}

List<TileModel> getQuestionPairs() {
  List<TileModel> pairs = [];
  TileModel tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = new TileModel();

  return pairs;
}

List<TileModel> getParesFacil() {
  List<TileModel> paresFacil = [];
  TileModel tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git1.jpg");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git2.png");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git3.jpg");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git4.png");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git5.png");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git6.jpg");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  return paresFacil;
}

List<TileModel> getQuestionParesFacil() {
  List<TileModel> paresFacil = [];
  TileModel tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresFacil.add(tileModel);
  paresFacil.add(tileModel);
  tileModel = new TileModel();

  return paresFacil;
}

List<TileModel> getParesMedio() {
  List<TileModel> paresMedio = [];
  TileModel tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git1.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git2.png");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git3.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git4.png");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git5.png");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git6.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git7.png");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/Git8.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  return paresMedio;
}

List<TileModel> getQuestionParesMedio() {
  List<TileModel> paresMedio = [];
  TileModel tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  tileModel.setImageAssetPath("assets/FundoCarta.jpg");
  tileModel.setIsSelected(false);
  paresMedio.add(tileModel);
  paresMedio.add(tileModel);
  tileModel = new TileModel();

  return paresMedio;
}
