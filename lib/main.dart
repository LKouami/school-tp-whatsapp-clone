import 'package:flutter/material.dart';
import 'package:tp/screen/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          elevation: 10,
          backgroundColor: Colors.greenAccent,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Icon(Icons.mail),
            const Icon(Icons.delete),
            //definir action sur n'importe quel widget
            GestureDetector(
              onTap: () => print("Click sur icon call"),
              child: const Icon(Icons.call),
            ),
            //ou utiliser directement un widget Icon button
            IconButton(
                onPressed: () {
                  print("click");
                },
                icon: const Icon(Icons.alarm))
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfilScreen()));
                        },
                        icon: const Icon(
                          Icons.people,
                          size: 55,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Container(
                          width: 300,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Kabira TCHEDRE",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    )),
                                Text("Disponible",
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 18,
                                    )),
                              ]),
                        ),
                      ),
                    ]),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 20),
                  height: 1,
                  color: Colors.black,
                ),
                menuItem(Icons.people, "Compte", text2: "Confidentialité"),
                menuItem(Icons.message, "Discussions",
                    text2: "Theme,Wallpapers"),
                menuItem(Icons.notifications, "Notifications"),
                GestureDetector(
                  onTap: () => print("Click sur deconnexion"),
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Center(
                        child: Text(
                      "Déconnexion",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  Widget menuItem(IconData icon, String text1, {String text2 = "défaut"}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              size: 30,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Container(
              width: 300,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$text1",
                        style: const TextStyle(
                          fontSize: 20,
                        )),
                    Text("$text2",
                        style: const TextStyle(
                          fontSize: 15,
                        )),
                  ]),
            ),
          ),
        ]);
  }
}
