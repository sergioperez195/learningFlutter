import 'package:flutter/material.dart';
import 'package:marvel_api_flutter_app/screen/character_detail_screen.dart';

import '../model/character.dart';

class CharacterCard extends StatelessWidget {
  final String name;
  final String description;
  final String thumbnail;
  final Character character;

  const CharacterCard({
    required this.name,
    required this.description,
    required this.thumbnail,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CharacterDetailScreen(character)));
        },
        child: Container(
          margin: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  thumbnail,
                  width: 125,
                  height: 125,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
