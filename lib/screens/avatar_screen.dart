import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Walter Moncada'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text('WM'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 200,
          backgroundImage: NetworkImage('https://elcomercio.pe/resizer/v2/6FUBT6XQXNHHNFOMCHIT7I34NA.jpg?auth=75b9cd3f5f728a5e2d90b6996b551d7e7e346d0a63104e3596036c1f214a1b77&width=1200&height=1200&quality=75&smart=true'),
         ),
      ),
    );
  }
}