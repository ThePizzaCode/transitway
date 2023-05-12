import 'package:flutter/material.dart';
import 'package:transitway/Pages/phonenumber.dart';
import 'package:transitway/components/socialbuttons.dart';
import 'package:transitway/components/textfield.dart';
import 'package:transitway/utils/env.dart';
import 'package:sign_in_button/sign_in_button.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                bottom: 70,
              ),
              child: Text(
                't',
                style: TextStyle(fontSize: 80),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Text(
                'Introdu numarul de telefon',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => phoneNumber()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: iosGrey, borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(children: [
                      Expanded(
                          child: Text(
                        '+40 ',
                        style: TextStyle(fontSize: 22),
                      ))
                    ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: iosGrey,
                      height: 36,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "sau",
                      style: TextStyle(fontSize: 22, color: iosGrey),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: iosGrey,
                      height: 36,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            socialButton(),
            socialButton(),
            SizedBox(
              height: 205,
            ),
            Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Prin continuare esti de acord cu ',
                    children: [
                      TextSpan(
                        text: 'Termenii si conditiile',
                        style: TextStyle(
                          color: Colors.purple,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text.rich(
                    TextSpan(
                      text: 'dar si cu ',
                      children: [
                        TextSpan(
                          text: 'Politica de confidentialitate.',
                          style: TextStyle(
                            color: Colors.purple,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
