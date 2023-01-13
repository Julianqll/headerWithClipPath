import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String name;
  final int movies;
  final String image;
  final bool available;

  const ListItem({super.key,  required this.name, required this.movies, required this.image, required this.available});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                width:60,
                height:60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image)),
                )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8),
                    child: Text(name, 
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Text("Acting in: $movies movie(s)")
                ],
              ),
            const Spacer(),
            InkWell(
              onTap: available ? () => {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Mail enviado"),
                  ),
                )
              } : null,
              child: Container(
                width:40,
                height:40,
                decoration: BoxDecoration(
                  color: available ? Colors.red : Colors.grey.shade400,
                  shape: BoxShape.circle,
                ),
              child: Icon(
                Icons.mail,
                color: available ? Colors.white : Colors.grey,
            )
              )
          ,)
        ],
      ),
    );
  }
}