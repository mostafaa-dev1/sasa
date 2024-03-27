import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'About me',
              style: TextStyle(
                color: color1,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 140,
              height: 3,
              color: color1,
            ),
            const SizedBox(
              height: 20,
            ),
             SizedBox(
              width: MediaQuery.sizeOf(context).width/1.8,
              child: const Text(
                '👋 Hello again! I\'m Mostafa mahmoud from Egypt/Cairo, currently in my third year of college, passionately immersed in the world of programming. My love for coding goes beyond the classroom as I actively participate in programming competitions,'
                    ' constantly challenging myself to explore new horizons in the ever-evolving tech landscape.\n\nMy expertise lies in Flutter, where I channel my creativity and problem-solving skills to craft engaging and efficient applications. The thrill of turning ideas into functional code is what fuels my enthusiasm for programming,'
                    '\n\nIn addition to my technical prowess, I thrive in dynamic environments. I find solace in the midst of challenges, showcasing my ability to work under pressure and deliver results. Team collaboration is my forte, as I believe in the power of collective intelligence to achieve remarkable outcomes.'
                    '\n\nGood in English, I leverage effective communication to bridge the gap between ideas and execution. Whether it\'s writing clear and concise code or articulating complex concepts, I understand the importance of language in the tech world.'
                    '\n\nOutside of coding, you might find me exploring new technologies, staying updated on industry trends, or simply unwinding with a good book. My journey in the tech realm is an ongoing adventure, and I\'m excited to continue pushing boundaries and making meaningful contributions.'
                    '\n\nLet\'s take a tour in my projects and skills to know more about me! ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                )
              ),
            ),
            SizedBox(height: 170,)
          ],
        ),
      ),
    );
  }
}
