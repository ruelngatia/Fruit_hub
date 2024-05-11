import 'package:flutter/material.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Container(height: 40),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Color(Konstants.orange),
            child: Image.asset('assets/images/fruits.png'),
          ),
          const SizedBox(height: 24),
          Text(
            'Get the freshest fruit combo',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 26, right: 26, bottom: 30),
            child: Text(
              'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/authentication");
                  },
                  child: const Text(
                    "Let's continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                      ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
