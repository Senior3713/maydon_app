import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maydon_app/presentation/pages/location_page.dart';
import 'package:maydon_app/presentation/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  String appbarTitle = 'Home';
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appbarTitle,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        leadingWidth: 55,
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Image(
            image: AssetImage("assets/images/appbar_logo.png"),
          ),
        ),
        actions: [
          Container(
            height: 26,
            width: 26,
            margin: const EdgeInsets.only(right: 25),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(width: 1.4)),
            child: Text(
              "•••",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          Center(
            child: Text("Home Page"),
          ),
          LocationPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: .2,
        height: 75,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 0;
                  appbarTitle = "Home";
                  controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear,
                  );
                });
              },
              child: Transform.scale(
                scale: index == 0 ? 1.2 : 1,
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.home,
                      color: index != 0 ? Colors.black54 : Colors.green,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: index != 0 ? Colors.black54 : Colors.green,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 1;
                  appbarTitle = "Location";
                  controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear,
                  );
                });
              },
              child: Transform.scale(
                scale: index == 1 ? 1.2 : 1,
                child: Column(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: index != 1 ? Colors.black54 : Colors.green,
                    ),
                    Text(
                      "Location",
                      style: TextStyle(
                        color: index != 1 ? Colors.black54 : Colors.green,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index = 2;
                  appbarTitle = "Profile";
                  controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear,
                  );
                });
              },
              child: Transform.scale(
                scale: index == 2 ? 1.2 : 1,
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.person,
                      color: index != 2 ? Colors.black54 : Colors.green,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        color: index != 2 ? Colors.black54 : Colors.green,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
