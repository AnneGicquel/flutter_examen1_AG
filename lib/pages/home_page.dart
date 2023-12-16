import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/video_hero.dart';
import 'package:flutter_examen1/pages/regions_page.dart';
import 'package:flutter_examen1/components/menu.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: 
      Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.45),
        iconTheme: const IconThemeData(color: Colors.white),
        toolbarHeight: 70.0, 
        centerTitle: false,  
       
      ),
      
      backgroundColor: Colors.white,
      
      drawer: const MenuDrawer(), 
      
      body: ListView(
        children: <Widget>[
         
          Container(
            margin: EdgeInsets.zero,
            child: const VideoHero(),
          ),
          
          Center(
            child: Column(
              
              children: <Widget>[
                
                Container(
                  color: Colors.blueAccent,
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      "I. Nos Régions",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      )
                    )
                  ),
                ),
                
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: const Text(
                    "Lorem ipsum dolor sit amet. In repudiandae consectetur vel vitae aliquam ut consequatur saepe sed inventore iste aut culpa dolor id repudiandae libero vel voluptas eaque. Aut eius voluptas qui rerum eius sit velit quia et quia pariatur.Lorem ipsum dolor sit amet. In repudiandae consectetur vel vitae aliquam ut consequatur saepe sed inventore iste aut culpa dolor id repudiandae libero vel voluptas eaque.",
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                ),
                
                const SizedBox(height: 35),
                
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                          const RegionPage(title: "Region Page")),
                    );
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(250, 40)),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: Colors.blueAccent),
                      SizedBox(width: 5),
                      Text(
                        "Rechercher Par Région",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 70),
                
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Text(
                    "Lorem ipsum dolor sit amet. Ex necessitatibus saepe vel ducimus commodi sed eius accusamus et quae galisum non libero iusto aut vitae quisquam aut laboriosam veritatis. Et blanditiis eius et illum galisum cum adipisci consequatur et rerum omnis qui porro fuga et repudiandae cupiditate vel pariatur molestias!", // Placeholder text
                    style: TextStyle(
                      color: Color.fromARGB(255, 128, 124, 124),
                      fontSize: 10,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


