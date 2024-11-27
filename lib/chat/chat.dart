import 'dart:ffi';

import 'package:flutter/material.dart';

class AIMessages {
  late String message = "hello";
  late String from = "AI";
  late DepressionDegree degree = DepressionDegree.sad;

  AIMessages(
      {required String this.from,
      required DepressionDegree this.degree,
      required String this.message});
}

enum DepressionDegree { sad, withdrawn, hopeless, annoyed }

class ChatUI extends StatefulWidget {
  ChatUI({super.key});

  @override
  State<ChatUI> createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  List<AIMessages> listOfResponses = [
    AIMessages(
        message:
            "I'm sorry to hear that you're feeling sad. Can you tell me more about what's been going on or what might be contributing to these feelings? Sometimes talking about it can help us understand and work through the sadness together.",
        from: "AI",
        degree: DepressionDegree.sad),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.sad,
        message:
            "It's okay to feel sad, and it's important to acknowledge those emotions. What do you think might be at the root of this sadness? Is there something specific that has been on your mind lately?"),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.sad,
        message:
            "Feeling sad can be really tough. I'm here for you, and we can take this one step at a time. Have you noticed any patterns or triggers that seem to bring on these feelings? Let's explore them together"),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.annoyed,
        message:
            "It seems like you're experiencing some frustration right now. Can you share more about what's been bothering you? Understanding the source of your annoyance might help us find a way to address it together."),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.annoyed,
        message:
            "I'm sorry to hear that you're feeling annoyed. It's okay to express those emotions. What do you think is contributing to this feeling? Sometimes, talking it through can help us pinpoint what's going on."),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.annoyed,
        message:
            "Feeling annoyed can be really challenging to manage. I'm here to support you. Can you tell me more about what's been happening recently? Maybe we can explore some strategies to help you cope with these feelings."),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.hopeless,
        message:
            "I'm really sorry to hear that you're feeling hopeless. It's important to remember that these feelings, as overwhelming as they may be, don't define you. Can you tell me more about what's been going on? Together, we can explore ways to find some light in this dark time."),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.hopeless,
        message:
            "Feeling hopeless can be incredibly tough, and I'm here to help you through this. It might feel like there's no way out right now, but we can work together to find some steps forward. What specific situations or thoughts are contributing to these feelings?"),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.hopeless,
        message:
            "I'm sorry you're experiencing such deep feelings of hopelessness. You're not alone, and reaching out is a positive step. Let's talk about what you're experiencing and see if we can uncover some areas where you can regain a sense of control and hope."),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.withdrawn,
        message:
            "It sounds like you're feeling quite withdrawn lately. That can be really challenging to deal with. Can you share more about what's been going on and what might be contributing to these feelings? Together, we can find ways to address them and bring you some relief."),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.withdrawn,
        message:
            "I'm sorry to hear that you're feeling withdrawn. It's important to acknowledge these feelings. What do you think has been making you feel this way? Sometimes understanding the root cause can help us figure out the next steps to take."),
    AIMessages(
        from: "AI",
        degree: DepressionDegree.withdrawn,
        message:
            "It sounds like you're feeling quite withdrawn lately. That can be really challenging to deal with. Can you share more about what's been going on and what might be contributing to these feelings? Together, we can find ways to address them and bring you some relief.")
  ];

  List<AIMessages> chathistory = [];

  selectResponse(depressedType) {
    late AIMessages selection;
    final shuffle = listOfResponses.firstWhere((item) {
      return item.degree == depressedType;
    });

    setState(() => {
          if (depressedType == DepressionDegree.sad)
            {
              chathistory.add(AIMessages(
                  from: "Me",
                  degree: DepressionDegree.annoyed,
                  message: "I'm feeling a bit down"))
            },
          if (depressedType == DepressionDegree.annoyed)
            {
              chathistory.add(AIMessages(
                  from: "Me",
                  degree: DepressionDegree.annoyed,
                  message: "I'm kinda upset"))
            },
          if (depressedType == DepressionDegree.hopeless)
            {
              chathistory.add(AIMessages(
                  from: "Me",
                  degree: DepressionDegree.annoyed,
                  message: "I don't think i want to continue"))
            },
          if (depressedType == DepressionDegree.withdrawn)
            {
              chathistory.add(AIMessages(
                  from: "Me",
                  degree: DepressionDegree.withdrawn,
                  message: "I have this urge to ghost everyone"))
            },
          chathistory.add(shuffle)
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          ListView.builder(
            itemCount: chathistory.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 100, bottom: 150),
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (chathistory[index].from == "AI"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (chathistory[index].from == "Me"
                          ? Colors.grey.shade200
                          : Colors.blue[200]),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      chathistory[index].message,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 100,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 120,
              width: double.infinity,
              color: Colors.white,
              child: Wrap(
                spacing: 10,
                runSpacing: 5,
                children: <Widget>[
                  TextButton(
                    onPressed: () => {selectResponse(DepressionDegree.sad)},
                    child: StylesSuggestedText("I'm sad", 80),
                    style: ButtonStyle(),
                  ),
                  TextButton(
                      onPressed: () =>
                          {selectResponse(DepressionDegree.withdrawn)},
                      child: StylesSuggestedText("I feel like ghosting", 180)),
                  TextButton(
                      onPressed: () =>
                          {selectResponse(DepressionDegree.hopeless)},
                      child: StylesSuggestedText("Is life worth living?", 160)),
                  TextButton(
                      onPressed: () =>
                          {selectResponse(DepressionDegree.annoyed)},
                      child: StylesSuggestedText("🙃", 0)),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StylesSuggestedText extends StatelessWidget {
  StylesSuggestedText(this.message, this.length);

  final String message;
  double length = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: length,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 33, 163, 243),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(
            //backgroundColor:                              const Color.fromARGB(255, 39, 148, 222),
            color: const Color.fromARGB(255, 227, 239, 245),
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
