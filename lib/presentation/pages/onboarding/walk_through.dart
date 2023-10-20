import 'package:flutter/material.dart';
import 'package:maydon_app/presentation/pages/sign_in_screen.dart';
import 'package:maydon_app/presentation/strings.dart';

class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({super.key});

  @override
  State<WalkThroughScreen> createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  double? currentPage = 0;
  final PageController _pageController = PageController();

  final _kDuration = const Duration(milliseconds: 100);
  final _kCurve = Curves.ease;
  late bool navPage;

  @override
  void initState() {
    navPage = false;
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page;
        if (currentPage == 2) {
          navPage = true;
        }
      });
    });
    subTitle;
    title;
  }

  List<String> subTitle = [
    t14_WalkThrough2_SubTitle,
    t14_WalkThrough3_SubTitle,
    t14_WalkThrough4_SubTitle
  ];
  List<String> title = [
    t14_WalkThrough2_Title,
    t14_WalkThrough3_Title,
    t14_WalkThrough4_Title
  ];
  List<Widget> pages = [
    const WalkViewComp(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(100),
      ),
      imageUrl: 'assets/images/stadium/img.png',
    ),
    const WalkViewComp(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(100),
        bottomLeft: Radius.circular(100),
      ),
      imageUrl: 'assets/images/stadium/img_1.png',
    ),
    const WalkViewComp(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(100),
      ),
      imageUrl: 'assets/images/stadium/img_2.png',
    ),
  ];

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: pages,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title[currentPage!.toInt()],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subTitle[currentPage!.toInt()],
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      IndicatorComp(
                        currentPage: currentPage,
                        page: 0,
                      ),
                      IndicatorComp(
                        currentPage: currentPage,
                        page: 1,
                      ),
                      IndicatorComp(
                        currentPage: currentPage,
                        page: 2,
                      ),
                    ]),
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: () {
                        _pageController.nextPage(
                          duration: _kDuration,
                          curve: _kCurve,
                        );

                        if (navPage) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()));
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            currentPage == 2
                                ? t14_btn_WalkThrough2Start
                                : t14_lbl_SignIn3,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 16,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WalkViewComp extends StatelessWidget {
  const WalkViewComp(
      {super.key, required this.borderRadius, required this.imageUrl});

  final String imageUrl;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: MediaQuery.sizeOf(context).width * 1.3,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            borderRadius: borderRadius,
            image: DecorationImage(
                image: AssetImage(imageUrl), fit: BoxFit.cover)),
      ),
    );
  }
}

class IndicatorComp extends StatelessWidget {
  const IndicatorComp(
      {super.key, required this.currentPage, required this.page});

  final double? currentPage;
  final int page;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPage == page ? Colors.green : Colors.grey,
      ),
    );
  }
}
