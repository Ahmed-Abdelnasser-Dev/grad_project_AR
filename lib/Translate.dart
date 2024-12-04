import 'package:flutter/material.dart';

class Translate extends StatelessWidget {
  const Translate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(11, 12, 16, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(11, 12, 16, 1),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Object Detection",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Handle menu action
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildDetectionCard(
            imageUrl: 'https://picsum.photos/seed/picsum/200/300',
            title: "English Text",
            description:
                "A Book about Books\n\nThe evil that men write, lives after them...",
          ),
          const SizedBox(height: 16),
          _buildDetectionCard(
            imageUrl: 'https://picsum.photos/seed/picsum2/200/300',
            title: "Translated Text",
            description: "A translated description of the above text...",
          ),
        ],
      ),
    );
  }

  Widget _buildDetectionCard({
    required String imageUrl,
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image Section
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 200,
                width: double.infinity,
                color: Colors.grey[800],
                child: const Icon(Icons.broken_image, color: Colors.white),
              );
            },
          ),
        ),
        const SizedBox(height: 16),

        // Text Section
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: const Color.fromARGB(255, 16, 17, 40),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
