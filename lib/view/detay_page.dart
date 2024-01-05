import 'package:flutter/material.dart';
import 'package:fluttersinav/model/character.dart';

class DetayPage extends StatelessWidget {
  Character character;
  DetayPage(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Karakter Detay",
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: double.infinity,
          color: Color.fromARGB(255, 246, 254, 205),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(character.image),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      character.name,
                      maxLines: 2,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      character.status,
                      style: const TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      character.gender,
                      style: const TextStyle(color: Colors.black, fontSize: 23),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      character.species,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 13, 175, 5),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
