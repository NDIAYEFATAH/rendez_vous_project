import 'package:flutter/material.dart'; // Importe le package Flutter pour créer des interfaces utilisateur.

import '../utils/config.dart'; // Importe un fichier de configuration personnalisé.

class SocialButton extends StatelessWidget {
  // Déclare une classe stateless widget appelée SocialButton.
  const SocialButton({Key? key, required this.social}) : super(key: key);
  // Constructeur de la classe. Reçoit une clé facultative et une chaîne de caractères "social" obligatoire.

  final String social;
  // Déclare une variable de type String pour stocker le nom du réseau social.

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    // Initialise la configuration de l'application avec le contexte actuel.
    return OutlinedButton(
      // Retourne un bouton à contour.
      style: OutlinedButton.styleFrom(
        // Définit le style du bouton.
        padding: const EdgeInsets.symmetric(vertical: 8),
        // Définit une marge intérieure symétrique verticale de 15 pixels.
        side: const BorderSide(width: 1, color: Colors.black),
        // Définit une bordure noire d'un pixel de largeur.
      ),
      onPressed: () {},
      // Définit une fonction vide pour l'événement de pression du bouton.
      child: SizedBox(
        // Utilise un widget SizedBox pour définir les dimensions de l'enfant.
        width: Config.widthSize * 0.2,
        // Définit la largeur en fonction de la configuration initialisée.
        child: Row(
          // Utilise un widget Row pour disposer les enfants horizontalement.
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Aligne les enfants avec des espaces égaux entre eux.
          children: <Widget>[
            // Liste des widgets enfants.
            Image.asset(
              'assets/$social.png',
              // Affiche une image en utilisant le nom du réseau social pour créer le chemin de l'image.
              width: 40,
              // Définit la largeur de l'image à 40 pixels.
              height: 40,
              // Définit la hauteur de l'image à 40 pixels.
            ),
            Text(
              social.toUpperCase(),
              // Affiche le nom du réseau social en majuscules.
              style: const TextStyle(
                // Définit le style du texte.
                color: Colors.black,
                // Définit la couleur du texte à noir.
              ),
            ),
          ],
        ),
      ),
    );
  }
}
