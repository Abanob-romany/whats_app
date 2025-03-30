import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        appBar: AppBar(
          backgroundColor: Color(0xff168C4B),
          leadingWidth: 90,
          leading: Row(
            children: [
              SizedBox(width: 10),
              Image(
                image: AssetImage('assets/Vector.png'),
                color: Colors.white,
                width: 20,
                height: 20,
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile_pic.png'),
                radius: 20,
              ),
            ],
          ),
          actions: [
            SizedBox(
              width: 40,
              child: Image(
                image: AssetImage('assets/Phone.png'),
                color: Colors.white,
                width: 30,
                height: 30,
              ),
            ),
            Image(
              image: AssetImage('assets/video.png'),
              color: Colors.white,
              width: 30,
              height: 30,
            ),
            SizedBox(
              width: 40,
              child: Image(
                image: AssetImage('assets/More-vertical.png'),
                color: Colors.white,
                width: 30,
                height: 30,
              ),
            ),
          ],
          title: Text(
            'Abanoub Romany',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                MessageBubble(
                  text: 'Hi Abanoub! How are you today?',
                  isMe: false,
                ),
                SizedBox(height: 10),
                MessageBubble(
                  text: 'I am doing well, How about you?',
                  isMe: true,
                ),
                SizedBox(height: 10),
                MessageBubble(
                  text:
                      'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
                  isMe: false,
                ),
                SizedBox(height: 10),
                MessageBubble(text: "yes that's right", isMe: true),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff168C4B),
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff168C4B),
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff168C4B),
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              hintText: 'Type a message...',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 5,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  start: 17,
                                ),
                                child: Image(
                                  width: 20,
                                  height: 20,
                                  image: AssetImage('assets/Camera.png'),
                                ),
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  end: 17,
                                ),
                                child: Image(
                                  width: 10,
                                  height: 10,
                                  image: AssetImage('assets/Send.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff168C4B),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Mic.png'),
                              scale: 6,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  const MessageBubble({super.key, required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: isMe ? Color(0xff232D36) : Color(0xff168C4B),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isMe ? 14 : 0),
            topRight: Radius.circular(isMe ? 0 : 14),
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
