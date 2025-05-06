import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: const Text('Common Widgets'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Wiget Tree Demo',
                  style: TextStyle(fontSize: 80.0),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.access_alarm,
                      size: 200.0,
                    )),
                const ContainerBox(),
                const Divider(),
                const ButtonExamples(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerBox extends StatelessWidget {
  const ContainerBox({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(20.0),
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightBlue,
              ]),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ]),
      child: Center(
        child: RichText(
          text: const TextSpan(
              text: 'Container Box',
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.deepPurple,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.dashed,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' Example',
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.lime,
                    decorationStyle: TextDecorationStyle.dashed,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

class ButtonExamples extends StatefulWidget {
  const ButtonExamples({super.key});
  @override
  State<ButtonExamples> createState() => _ButtonExamplesState();
}

class _ButtonExamplesState extends State<ButtonExamples> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(
                    content: Text('Submit tapped')));
            },
            child: const Text('Submit')),
            TextButton(
              onPressed: (){
                ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(
                    content: Text('Text button tapped')));
            
              }, 
              child: const Text('Text Button')),
              FloatingActionButton(
                onPressed: (){},
                child: const Icon(Icons.add),),
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.favorite),
              ),
      ],
    );
  }
}
