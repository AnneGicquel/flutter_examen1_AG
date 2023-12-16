import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/menu.dart';


class RegionPage extends StatelessWidget {
  const RegionPage({Key? key, required this.title}) : super(key: key);

  
  final String title;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.45),
        centerTitle: false,  
        
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        
        iconTheme: const IconThemeData(color: Colors.white),
        toolbarHeight: 70.0, 
      ),
      drawer: const MenuDrawer(), 
     
      body: Container(),
    );
  }
}

