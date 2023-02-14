import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondScreen();
                  }));
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8), fontSize: 20),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffffffff))),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Image.network(
              'https://puzzleit.ru/files/puzzles/143/142602/_original.jpg'),
        ),
        SizedBox(
          height: 100,
        ),
        Text(
          'Welocme!',
          style: TextStyle(
              color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 250,
          child: Text(
            'There are so people adrting new player ago is fat!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 238, 236, 236),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.8), fontSize: 20),
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffffffff))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Image.network(
                    'https://puzzleit.ru/files/puzzles/143/142602/_original.jpg'),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'My Day Team!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 250,
                child: Text(
                  'Greatest people`s in the world!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
