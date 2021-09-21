import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeBuild(),
      debugShowCheckedModeBanner: false,
    );
  }
}

Widget homeBuild() {
  return Scaffold(
    body: home(),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'Inicio',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          label: 'Buscar',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.library_books,
            color: Colors.white,
          ),
          label: 'Sua Biblioteca',
          backgroundColor: Colors.black,
        ),
      ],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.black,
    ),
  );
}

Widget home() {
  return SingleChildScrollView(
    child: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.1, 0.1),
          colors: [
            Color.fromRGBO(0, 0, 0, .7),
            Colors.black,
          ],
        )),
        child: DefaultTextStyle(
            child: content(),
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w500,
                fontFamily: 'Gotham'))),
  );
}

Widget content() {
  return Column(
    children: [
      headerContent(),
      ultimoAlbum(),
      lancamento(),
      lancamentoAlbum(),
      profile(),
    ],
  );
}

Widget headerContent() {
  return Row(children: [title(), alarmIcon(), clockIcon(), settingIcon()]);
}

Widget title() {
  return Expanded(
      flex: 9,
      child: Text("Boa noite",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)));
}

Widget alarmIcon() {
  return Expanded(
      flex: 2, child: Icon(Icons.notifications_outlined, color: Colors.white));
}

Widget clockIcon() {
  return Expanded(flex: 2, child: Icon(Icons.alarm, color: Colors.white));
}

Widget settingIcon() {
  return Expanded(
      flex: 2, child: Icon(Icons.settings_outlined, color: Colors.white));
}

Widget miniAlbum(src, title) {
  return Expanded(
      flex: 2,
      child: Container(
          child: Row(
            children: [
              ClipRRect(
                  child: Image(image: AssetImage(src), width: 60),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                      topLeft: Radius.circular(4))),
              Flexible(
                  child: Container(
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                margin: EdgeInsets.all(5),
              ))
            ],
          ),
          margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color.fromRGBO(70, 70, 70, 1),
          )));
}

Widget ultimoAlbum() {
  return Column(
    children: [
      Row(
        children: [
          miniAlbum("images/50-50.jpg", "50/50 - Gusttavo Lima"),
          miniAlbum("images/nochurrasco.jpg", "No churrasco - Clayton e Romario")
        ],
      ),
      Row(
        children: [
          miniAlbum("images/nopelo1.jpg", "No Pelo - Hugo e Guilherme"),
          miniAlbum("images/nopelo2.jpg", "No Pelo 2 - Hugo e Guilherme")
        ],
      ),
      Row(
        children: [
          miniAlbum("images/nopelo3.jpg", "No Pelo - Hugo e Guilherme"),
          miniAlbum("images/nafazenda.jpg", "Na Fazendo - Eduardo Costa")
        ],
      ),
    ],
  );
}

Widget lancamento() {
  return Container(
    child: Row(
      children: [
        lancamentoImage(),
        lancamentoTitle(),
      ],
    ),
    margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
  );
}

Widget lancamentoAlbum() {
  return Container(
    child: Row(
      children: [lancamentoAlbumImage(), lancamentoAlbumContent()],
    ),
    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
    decoration: BoxDecoration(
        color: Color.fromRGBO(42, 42, 42, 1),
        borderRadius: BorderRadius.circular(10)),
  );
}

Widget lancamentoImage() {
  return ClipRRect(
      child: Image(image: AssetImage("images/jem.jpg"), width: 60),
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
          bottomRight: Radius.circular(100)));
}

Widget lancamentoTitle() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Text("NOVO LANÇAMENTO DE",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14)),
        margin: EdgeInsets.fromLTRB(10, 5, 5, 0),
      ),
      Container(
        child: Text("Jorge e Matheus",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
        margin: EdgeInsets.fromLTRB(10, 5, 5, 0),
      ),
    ],
  );
}

Widget lancamentoAlbumImage() {
  return ClipRRect(
      child: Image(image: AssetImage("images/cheirosa.jpg"), width: 180),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        topLeft: Radius.circular(10),
      ));
}

Widget lancamentoAlbumContent() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Text("Cheirosa",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
        margin: EdgeInsets.fromLTRB(10, 0, 5, 10),
      ),
      Container(
        child: Text("Jorge e Matheus",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14)),
        margin: EdgeInsets.fromLTRB(10, 0, 5, 10),
      ),
      Container(
          child: Row(
            children: [
              Container(
                  child:
                      Icon(Icons.favorite_border_outlined, color: Colors.white),
                  margin: EdgeInsets.fromLTRB(10, 20, 0, 0)),
              Container(
                  child: Icon(Icons.play_circle, color: Colors.white),
                  margin: EdgeInsets.fromLTRB(190, 20, 0, 0)),
            ],
          ),
          margin: EdgeInsets.fromLTRB(10, 15, 0, 0)),
    ],
  );
}

Widget profile() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [profileContent(), profileImage()],
    ),
    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
    decoration: BoxDecoration(
        color: Color.fromRGBO(42, 42, 42, 1),
        borderRadius: BorderRadius.circular(10)),
  );
}

Widget profileImage() {
  return ClipRRect(
      child: Image(image: AssetImage("images/eu.jpg"), width: 240),
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(10),
        topRight: Radius.circular(10),
      ));
}

Widget profileContent() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Text("Tiago de Freitas",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
        margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
      ),
      Container(
        child: Text("Idade: 20 anos",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14)),
        margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
      ),
      Container(
        child: Text("Engenharia de Software",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14)),
        margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
      ),
      Container(
        child: Text("UNIFACEF",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.blue)),
        margin: EdgeInsets.fromLTRB(0, 0, 15, 10),
      ),
    ],
  );
}
