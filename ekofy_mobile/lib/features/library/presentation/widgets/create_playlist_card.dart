import 'package:flutter/material.dart';

class CreatePlaylistCard extends StatelessWidget {
  final VoidCallback onTap;
  const CreatePlaylistCard({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF15151B),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.playlist_add, color: Colors.white70, size: 32),
              SizedBox(height: 8),
              Text('Create a playlist', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ),
    );
  }
}
