import 'package:flutter/material.dart';
import 'dart:math';

class InsultPage extends StatefulWidget {
  const InsultPage({Key? key}) : super(key: key);

  @override
  State<InsultPage> createState() => _InsultPageState();
}

class _InsultPageState extends State<InsultPage> {
  List<String> insults = [
    "You’re the reason God created the middle finger",
    "You bring everyone so much joy when you leave the room.",
    "I’d give you a nasty look but you’ve already got one.",
    "Someday you’ll go far. I hope you stay there.",
    "Were you born this stupid or did you take lessons?",
    "The people who tolerate you on a daily basis are the real heroes.",
    "You should really come with a warning label.",
    "I don’t know what your problem is, but I’m guessing it’s hard to pronounce.",
    "If I wanted to hear from an asshole, I’d fart.",
    "It’s kind of hilarious watching you try to fit your entire vocabulary into one sentence.",
    "You look like something that came out of a slow cooker.",
    "You are so full of shit, the toilet’s jealous.",
    "I love what you’ve done with your hair. How do you get it to come out of the nostrils like that?",
    "Stupidity isn't a crime, so you’re free to go.",
    "Jesus might love you, but everyone else definitely thinks you’re an idiot.",
    "You see that door? I want you on the other side of it.",
    "If you’re going to act like a turd, go lay on the yard.",
    "You are more disappointing than an unsalted pretzel.",
    "Your face makes onions cry.",
    "If laughter is the best medicine, your face must be curing the world.",
    "You’re not stupid! You just have bad luck when you’re thinking.",
    "Have a nice day, somewhere else.",
    "Everyone’s entitled to act stupid once in a while, but you really abuse the privilege.",
    "Your family tree must be a cactus ‘cause you’re all a bunch of pricks.",
    "Somewhere out there, there's a tree working very hard to produce oxygen so that you can breathe. I think you should go and apologize to it.",
    "Light travels faster than sound which is why you seemed bright until you spoke.",
    "Hey, your village called – they want their idiot back.",
    "Calling you an idiot would be an insult to all stupid people.",
    "Good story, but in what chapter do you shut up?",
    "There are some remarkably dumb people in this world. Thanks for helping me understand that.",
    "May both sides of your pillow be uncomfortably warm.",
    "I’m not insulting you, I’m describing you.",
    "You are like a cloud. When you disappear it’s a beautiful day.",
    "I’ve seen people like you before, but I had to pay admission.",
    "I was hoping for a battle of wits but you appear to be unarmed.",
    "Your ass must be pretty jealous of all the shit that comes out of your mouth.",
    "I could eat a bowl of alphabet soup and poop out a smarter statement than whatever you just said.",
    "People like you are the reason I’m on medication.",
    "Earth is full. Go home.",
    "Keep rolling your eyes, you might eventually find a brain.",
    "If your brain was dynamite, there wouldn't be enough to blow your hat off.",
    "Grab a straw, because you suck.",
    "Hey, you have something on your chin. No, the 3rd one down.",
    "Don’t be ashamed of who you are. That’s your parent’s job.",
    "You’re about as useful as a screen door on a submarine.",
    "That sounds like a you problem.",
    "I told my therapist about you.",
    "I envy people who have never met you.",
    "If you were an inanimate object, you’d be a participation trophy.",
    "I don’t have the time or the crayons to explain this to you.",
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    var rng = Random();
    index = rng.nextInt(insults.length - 1);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Math is HARD!"),
          backgroundColor: const Color(0xff074AB6),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Text(
              insults[index],
              textAlign: TextAlign.center,
              textScaleFactor: 1.5,
            ),
          ),
        )
    );
  }
}
