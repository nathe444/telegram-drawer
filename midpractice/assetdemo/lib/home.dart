import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asset Bundle Demo'),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
             Image(
              image: const AssetImage('lib/images/CS.jpg'),
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width / 2,
              //width: MediaQuery.of(context).size.width / 2,
            ),
            Image.network(
              'https://www.vdocipher.com/blog/wp-content/uploads/2024/04/Flutter-video-player.jpg',
              width: MediaQuery.of(context).size.width / 2,
            ),
          ],
        ),
      ),
    );
  }
}


void main(){
  runApp(Home)
}



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(ctx){
    return MaterialApp(
      home: Scaffold(ctx)
    )
  }
}
