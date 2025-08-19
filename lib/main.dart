import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'MyCustomFont',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: PageAccueil(),
    );
  }
}

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Magazine Infos',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          tooltip: 'Menu',
          onPressed: () {
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            tooltip: 'Recherche',
            onPressed: () {
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/news.jpg',
            width: 800, height: 200, fit: BoxFit.cover,
          ),
          PartieTitre(),
          PartieTexte(),
          PartieIcone(),
          PartieRubrique(),
        ],
      ),
      floatingActionButton:
      FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Tu as cliqué dessus')),
            );
          },
          backgroundColor: Colors.pink,
          child: const Icon(Icons.home_outlined, color: Colors.white)
      ),
    );
  }
}

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Bienvenue au Magazine Infos ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: Colors.black)
            ),
            Text(
                "Votre magazine numérique, votre source d'inspiration",
                style: TextStyle(fontSize: 14, color: Colors.grey, fontStyle: FontStyle.italic)
            ),
          ],
        )
    );
  }
}

class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Magazine Infos est bien plus qu'un simple magazine d'informations. "
                "C'est votre passerelle vers le monde, une source inestimable de "
                "connaissances et d'actualités soigneusement sélectionnées pour vous éclairer sur "
                "les enjeux mondiaux, la culture, la science, et voir même le divertissement (les jeux).",
                style: TextStyle(color: Colors.black)),
          ],
        )
    );
  }
}

class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(Icons.home, color: Colors.pink),
                Text("tel".toUpperCase(), style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(Icons.mail, color: Colors.pink),
                Text("Mail".toUpperCase(), style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(Icons.share, color: Colors.pink),
                Text("Partage".toUpperCase(), style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/journal_one.png',
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/journal_two.png',
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        )
    );
  }
}