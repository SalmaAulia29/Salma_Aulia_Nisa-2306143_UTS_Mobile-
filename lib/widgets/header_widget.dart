import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String role;
  final int level;

  const HeaderWidget({super.key, required this.name, required this.role, required this.level});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepOrange, Colors.greenAccent],
          begin: .topStart,
          end: .bottomEnd
        )
      ),
      padding: EdgeInsets.all(24),
      child: Row(
        children: [
            Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://images.pexels.com/photos/12899151/pexels-photo-12899151.jpeg"),
              ),
              Positioned(
                right: 3,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Colors.indigo
                  ),
                  child: Text(level.toString(),
                    style: TextStyle(
                      color: Colors.blue, 
                      fontSize: 10,
                      fontWeight: .bold
                    ),),
                ),
              )
            ],
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(name,
                style: TextStyle(
                  color: Colors.black12,
                  fontSize: 16
                ),),
                Text(role)
              ],
            ),
          )
        ],
      ),
    );
  }
}