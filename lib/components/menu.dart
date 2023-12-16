import 'package:flutter/material.dart';
import 'package:flutter_examen1/pages/home_page.dart';
import 'package:flutter_examen1/pages/regions_page.dart';


class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.62, // largeur du 'pan'
      child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15), 
                Text(
                  'France Data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Atlas de Données Françaises',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    
                  ),
                ),
              ],
            ),
          ),
          
          ListTile(
            leading: const Icon(Icons.home), 
            title: const Text ('Accueil',
            style: TextStyle(fontSize: 15)),
             
            onTap: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(title: "France Data"),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.map), 
            title: const Text('Régions',
            style: TextStyle(fontSize: 15)), 
            onTap: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const RegionPage(title: "Recherche par Region"),
                      

                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings), 
            title: const Text('Paramètres',
            style: TextStyle(fontSize: 15)), 
            onTap: () {
              
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),);
  }
}
