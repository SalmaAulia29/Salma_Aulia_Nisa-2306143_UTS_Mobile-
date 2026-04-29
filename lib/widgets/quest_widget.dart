import 'package:flutter/material.dart';
import '../models/quest_model.dart';

class QuestWidget extends StatelessWidget {
  final Quest quest;
  final VoidCallback onTap;

  const QuestWidget({super.key, required this.quest, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: quest.completed ? Colors.green.withAlpha(24) : Colors.grey.withAlpha(24),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                quest.completed ? Icons.check_circle : Icons.circle_outlined,
                color: quest.completed ? Colors.green : Colors.grey,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    quest.title,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 6),
                  Text('Rank ${quest.rank}', style: const TextStyle(color: Colors.black54)),
                  const SizedBox(height: 4),
                  Text('Reward: ${quest.reward}', style: const TextStyle(fontSize: 12, color: Colors.black45)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
