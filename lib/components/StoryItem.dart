import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryItemWidget extends StatelessWidget {
  const StoryItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
        color: Colors.grey.shade300,
      ),
      height: 100,
      width: 120,
      clipBehavior: Clip.hardEdge,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://th.bing.com/th/id/OIP.M-8HQWY61PjeiVhZAflbDgHaH2?w=152&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                "https://th.bing.com/th/id/OIP.q99VQ4Bw2mVnuyQSXTrc6QHaGf?w=233&h=203&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                scale: 2,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 8,
              child: Text(
                "BBC News",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
