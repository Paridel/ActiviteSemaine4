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
          Image.asset('assets/images/news.jpg', width: 800, height: 200, fit: BoxFit.cover,
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
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bienvenue au Magazine Infos ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
            Text("Votre magazine numérique, votre source d'inspiration", style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic)),
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
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              children: [
                Icon(Icons.home, size: 30, color: Colors.pink),
                SizedBox(height: 10),
                Text("TEL", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(Icons.mail, size: 30, color: Colors.pink),
                SizedBox(height: 10),
                Text("MAIL", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(Icons.share, size: 30, color: Colors.pink),
                SizedBox(height: 10),
                Text("PARTAGE", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold)),
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
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
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
                borderRadius: BorderRadius.circular(10),
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