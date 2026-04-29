import 'package:flutter/material.dart';
import 'package:salma_application_4/models/quest_model.dart';
import 'package:salma_application_4/pages/detail_quest_page.dart';
import 'package:salma_application_4/pages/register_page.dart';
import 'package:salma_application_4/widgets/chip_widget.dart';
import 'package:salma_application_4/widgets/header_widget.dart';
import 'package:salma_application_4/widgets/quest_widget.dart';

void main() {
  runApp(MaterialApp(
    title: 'Adventure Salma',
    debugShowCheckedModeBanner: false,
    initialRoute: "/register",
    onGenerateRoute: (datas) {
      if (datas.name == "/register") {
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      }

      if (datas.name == "/") {
        if (datas.arguments == null || datas.arguments is! Map) {
          return MaterialPageRoute(builder: (_) => const RegisterPage());
        }

        final args = Map<String, dynamic>.from(datas.arguments as Map);
        return MaterialPageRoute(
          builder: (_) => HomePage(userData: args),
        );
      }

      return MaterialPageRoute(builder: (_) => const RegisterPage());
    },
  ));
}

class HomePage extends StatefulWidget {
  final Map<String, dynamic> userData;

  const HomePage({
    super.key,
    required this.userData,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Quest> quests = [
    Quest(
      id: 'q1',
      title: 'Melindungi Desa',
      rank: 'A',
      reward: '50 Gold dan XP',
      image: 'https://images.pexels.com/photos/911738/pexels-photo-911738.jpeg',
      desc: 'Bantu warga desa melawan serangan monster malam hari. Kumpulkan bahan, bawa kembali informasi, dan jaga keamanan desa.',
    ),
    Quest(
      id: 'q2',
      title: 'Mencari Ramuan',
      rank: 'B',
      reward: '30 Gold dan Potion',
      image: 'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
      desc: 'Temukan bahan-bahan herbal di hutan untuk membuat ramuan penyembuh. Hati-hati terhadap musuh dan jebakan alami.',
    ),
    Quest(
      id: 'q3',
      title: 'Menemukan Petunjuk',
      rank: 'C',
      reward: '20 Gold dan Item Langka',
      image: 'https://images.pexels.com/photos/709552/pexels-photo-709552.jpeg',
      desc: 'Telusuri reruntuhan kuno untuk menemukan petunjuk tentang artefak yang hilang. Gunakan kecerdasan dan instingmu.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final String name = widget.userData['name'] ?? 'Unknown';
    final int level = (widget.userData['level'] as int?) ?? 0;
    final String rank = widget.userData['rank'] ?? '-';
    final String role = widget.userData['role'] ?? '-';

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Salma Aulia Nisa",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
              name: name,
              role: role,
              level: level,
              rank: rank,
            ),
            const SizedBox(height: 12),
            Row(
              children: const [
                ChipWidget(
                  warna: Colors.red,
                  icon: Icons.favorite,
                  label: 'HP:',
                  value: 100,
                ),
                SizedBox(width: 12),
                ChipWidget(
                  warna: Color.fromARGB(255, 32, 241, 13),
                  icon: Icons.accessibility_new,
                  label: 'Energy:',
                  value: 99,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Quest List', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: quests.length,
                separatorBuilder: (_, _) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final quest = quests[index];
                  return QuestWidget(
                    quest: quest,
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => DetailQuestPage(quest: quest)),
                      );
                      if (mounted) {
                        setState(() {});
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}