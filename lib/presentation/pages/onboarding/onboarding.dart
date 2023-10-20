import 'package:flutter/material.dart';
import 'package:maydon_app/presentation/pages/onboarding/walk_through.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  late AnimationController controllerOne;
  late Animation<double> animationOne;
  late AnimationController controllerTwo;
  late Animation<double> animationTwo;




  @override
  void initState() {

    super.initState();

    controllerOne = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    animationOne = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(controllerOne);

    controllerTwo = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    animationTwo = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(controllerTwo);

    controllerOne.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controllerTwo.forward();
      } else if (status == AnimationStatus.dismissed) {
        controllerTwo.reverse();
      }
    });

    controllerTwo.addStatusListener((status) {

      if (status == AnimationStatus.completed) {

        Future.delayed(const Duration(milliseconds: 1500), () {

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const WalkThroughScreen()),
          );
        });
      }
    });

    controllerOne.forward();
  }

  @override
  void dispose() {
    controllerOne.dispose();
    controllerTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/stadium/img_2.png"),fit: BoxFit.cover)),
        child: Stack(
          children: [
            Center(
              child: AnimatedBuilder(
                animation: controllerOne,
                builder: (BuildContext context, Widget? child) {
                  final double value = animationOne.value;
                  final double height =
                      MediaQuery.of(context).size.height * value;
                  final double width = MediaQuery.of(context).size.width * value;
                  final Alignment alignment =
                  value == 1 ? Alignment.center : Alignment.topCenter;

                  return AnimatedContainer(
                    duration: Duration.zero,
                    height: height,
                    width: width,
                    alignment: alignment,
                    decoration: BoxDecoration(
                      borderRadius: value == 1
                          ? BorderRadius.zero
                          : BorderRadius.circular(100),
                      color: Colors.green,
                    ),
                  );
                },
              ),
            ),
            Center(
              child: AnimatedBuilder(
                animation: controllerTwo,
                builder: (BuildContext context, Widget? child) {
                  final double value = animationTwo.value;
                  final double width = MediaQuery.of(context).size.width * value;
                  final Alignment alignment =
                  value == 1 ? Alignment.center : Alignment.topCenter;

                  return AnimatedContainer(
                    duration: Duration.zero,
                    height: width * 0.5,
                    width: width * 0.9,
                    alignment: alignment,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/app/icon_app.png"),
                          fit: BoxFit.cover),
                      borderRadius: value == 1
                          ? BorderRadius.zero
                          : BorderRadius.circular(100),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
