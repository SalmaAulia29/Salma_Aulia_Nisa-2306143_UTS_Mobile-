import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String role;
  final int level;
  final String rank;

  const HeaderWidget({super.key, required this.name, required this.role, required this.level, required this.rank});

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
                backgroundImage: NetworkImage("https://png.pngtree.com/png-clipart/20230823/original/pngtree-three-kids-hiking-in-the-forest-childhood-adventure-activity-vector-png-image_10635643.png"),
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
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.blueAccent.withAlpha(32),
              borderRadius: BorderRadius.circular(4)
            ),
            child: Text(rank, style:GoogleFonts.bubblegumSans(
              textStyle: TextStyle(fontSize: 32, color: Colors.brown )
            )),
          )
        ],
      ),
    );
  }
}