import 'package:allen/feature_box.dart';
import 'package:allen/pallete.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Allen'),
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: const EdgeInsets.only(top: 5),
                    decoration: const BoxDecoration(
                        color: Pallete.assistantCircleColor,
                        shape: BoxShape.circle),
                  ),
                ),
                Container(
                    height: 114,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/virtualAssistant.png')),
                    ))
              ],
            ),
            // chart bubble

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin:
                  const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
              decoration: BoxDecoration(
                  border: Border.all(color: Pallete.borderColor),
                  borderRadius: BorderRadius.circular(20)
                      .copyWith(topLeft: const Radius.circular(0))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Hello Everyone what  task can i  do for You ?",
                  style: TextStyle(fontSize: 20, fontFamily: 'Cera Pro'),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 22, top: 10),
              child: const Text(
                'Here are few features',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cera Pro',
                    color: Pallete.mainFontColor),
              ),
            ),
            // feature list

            Column(
              children: [
                FeatureBox(
                  color: Pallete.firstSuggestionBoxColor,
                  headerText: 'ChatGpt',
                  descriptiontext:
                      'A Smarter way to stay organized and informed with ChatGpt',
                ),
                FeatureBox(
                  color: Pallete.secondSuggestionBoxColor,
                  headerText: 'Dall-E',
                  descriptiontext:
                      'Get inspired and stay creative with your personal assitant powered by Dall-E',
                ),
                FeatureBox(
                  color: Pallete.secondSuggestionBoxColor,
                  headerText: 'Smart Voice Assitant',
                  descriptiontext:
                      'Get the best  of both worlds with a voice assistant powered by Dall-E and ChatGpt',
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Pallete.firstSuggestionBoxColor,
        child: const Icon(Icons.mic),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
