import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Connexion'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Mettez vos", style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700
            ),),
            Text("identifiants de connexion", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 50,),
            Text("E-mail"),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                hintText: "E-mail"
              ),
            ),
            SizedBox(height: 20,),
            Text("Mot de passe"),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: "Mot de passe"
              ),
            ),
            SizedBox(height: 40,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CupertinoColors.activeBlue
                    ),
                    child: Text("Connexion", style: TextStyle(
                        color: Colors.white
                    ),),
                  ),
                ),
                SizedBox(height: 10,),
                Text("OU", style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                ),),
                SizedBox(height: 10,),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: Colors.black
                      )
                    ),
                    child: Icon(Icons.mail_outline),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, to",
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
