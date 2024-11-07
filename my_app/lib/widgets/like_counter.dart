import 'package:flutter/material.dart';

class LikeCounter extends StatefulWidget {
  const LikeCounter({Key? key}) : super(key: key);

  @override
  _LikeCounterState createState() => _LikeCounterState();
}

class _LikeCounterState extends State<LikeCounter> {
  int _likeCount = 0;
  bool _isLiked = false;

  // Fungsi untuk mengubah state
  void _toggleLike() {
    setState(() {
      if (_isLiked) {
        _likeCount--;
      } else {
        _likeCount++;
      }
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 300,
        child: Column(
          children: [
            const Text(
              'Berikan Like!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    _isLiked ? Icons.favorite : Icons.favorite_border,
                    color: _isLiked ? Colors.red : Colors.grey,
                    size: 30,
                  ),
                  onPressed: _toggleLike,
                ),
                const SizedBox(width: 10),
                Text(
                  '$_likeCount',
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}