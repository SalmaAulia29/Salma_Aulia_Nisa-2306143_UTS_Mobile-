import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final Color warna;
  final IconData icon;
  final String label;
  final int value;

  const ChipWidget({super.key, required this.warna, required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 67, 230, 102).withAlpha(46),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color.fromARGB(255, 85, 255, 7).withAlpha(64))
      ),
      child: Row(
        children: [
          Icon(icon, size: 18, color: warna),
          const SizedBox(width: 8),
          Text(label),
          Text(
            value.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}