// Importation du package Flutter qui contient les widgets nécessaires pour créer l'interface utilisateur
import 'package:flutter/material.dart';

// Fonction principale de l'application Flutter, point d'entrée de l'application
void main() {
  // La fonction runApp() lance l'application avec le widget MyApp
  runApp(MyApp());
}

// Définition de la classe MyApp, un widget stateless (sans état mutable)
class MyApp extends StatelessWidget {
  
  // La méthode build est appelée pour construire l'interface utilisateur
  @override
  Widget build(BuildContext context) {
    
    // Retourne un MaterialApp, qui est l'enveloppe de base de l'application pour le design Material (style Android)
    return MaterialApp(
      
      // Scaffold fournit une structure de base avec une barre d'application et un corps (body)
      home: Scaffold(
        
        // AppBar est la barre d'application en haut de l'écran, elle contient un titre
        appBar: AppBar(title: Text('Layout Example')),
        
        // Le corps de l'application, on utilise Column pour disposer les enfants verticalement
        body: Column(
          
          // Centrage des widgets enfants verticalement
          mainAxisAlignment: MainAxisAlignment.center,
          
          // Liste des widgets enfants dans la colonne
          children: <Widget>[
            
            // Un Row pour disposer les éléments horizontalement
            Row(
              // Les éléments dans la ligne sont espacés de manière égale
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              // Liste des widgets enfants dans la ligne
              children: <Widget>[
                
                // Icône en forme d'étoile avec une taille de 50 pixels
                Icon(Icons.star, size: 50),
                
                // Une deuxième icône étoile de même taille
                Icon(Icons.star, size: 50),
                
                // Une troisième icône étoile de même taille
                Icon(Icons.star, size: 50),
              ],
            ),
            
            // Un widget Text qui affiche du texte sous la ligne
            Text('Row and Column Example'),
          ],
        ),
      ),
    );
  }
}