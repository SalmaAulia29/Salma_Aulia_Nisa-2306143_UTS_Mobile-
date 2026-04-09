import 'package:flutter/material.dart';



class QuestWidget extends StatelessWidget {
  const QuestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    onTap: () {

    };
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha(14),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.black.withAlpha(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withAlpha(20),
              blurRadius: 10,
              offset: const Offset(0, 4)

            )
          ]
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.pink.withAlpha(12),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(Icons.airline_seat_recline_normal, color: Colors.pinkAccent.withAlpha(10),),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment:  .start,
                children: [
                  Text("Mengembala"),
                  SizedBox(height: 8,),
                  Text("salmaaa")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}