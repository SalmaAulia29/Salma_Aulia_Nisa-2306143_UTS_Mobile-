import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/quest_model.dart';

class DetailQuestPage extends StatefulWidget {
  final Quest quest;

  const DetailQuestPage({super.key, required this.quest});

  @override
  State<DetailQuestPage> createState() => _DetailQuestPageState();
}

class _DetailQuestPageState extends State<DetailQuestPage> {
  void _takeQuest() {
    if (!widget.quest.completed) {
      setState(() {
        widget.quest.completed = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Quest berhasil diambil!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Quest'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                widget.quest.image,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.quest.title,
                    style: GoogleFonts.bubblegumSans(
                      textStyle: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    )),
                Icon(
                  widget.quest.completed ? Icons.check_circle : Icons.circle_outlined,
                  color: widget.quest.completed ? Colors.green : Colors.grey,
                  size: 32,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text('Rank: ${widget.quest.rank}', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 6),
            Text('Reward: ${widget.quest.reward}', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            const Text('Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(widget.quest.desc, style: const TextStyle(fontSize: 15, height: 1.5)),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _takeQuest,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Text('ambil quest', style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
