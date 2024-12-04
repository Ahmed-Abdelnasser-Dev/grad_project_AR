import 'package:flutter/material.dart';

class ObjectDetection extends StatelessWidget {
  const ObjectDetection({super.key});

  @override
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
          // First Image Container
          _buildDetectionCard(
            imageUrl: 'https://picsum.photos/seed/picsum/200/300',
            description: 'Mobile Phones Aligned Together',
          ),
          const SizedBox(height: 16),
          _buildDetectionCard(
            imageUrl: 'https://picsum.photos/seed/picsum/200/300',
            description: 'Mobile Phones Aligned Together',
          ),
          const SizedBox(height: 16),
          _buildDetectionCard(
            imageUrl: 'https://picsum.photos/seed/picsum/200/300',
            description: 'Mobile Phones Aligned Together',
          ),
          const SizedBox(height: 16),
          _buildDetectionCard(
            imageUrl: 'https://picsum.photos/seed/picsum/200/300',
            description: 'Mobile Phones Aligned Together',
          ),
          const SizedBox(height: 16),
          // Second Image Container (if needed)
        ],
      ),
    );
  }

  Widget _buildDetectionCard(
      {required String imageUrl, required String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 266,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 266,
                width: double.infinity,
                color: Colors.grey[800],
                child: const Icon(Icons.broken_image, color: Colors.white),
              );
            },
          ),
        ),
        const SizedBox(height: 20),

        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: const Color.fromARGB(255, 16, 17, 40),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    description,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
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
