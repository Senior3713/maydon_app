import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maydon_app/presentation/pages/edit_profile_page/edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 15, top: 20),
                  alignment: Alignment.bottomRight,
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile_avatar.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: GestureDetector(
                    child: Container(
                      height: 26,
                      width: 26,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Daniel Austin",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                  ),
                ),
                const Text(
                  "daniel_austin.yourdomain.com",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 27),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(color: Colors.black.withOpacity(.08)),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).push(CupertinoPageRoute(
                    builder: (builder) => const EditProfilePage(),
                  )),
                  leading: const Icon(CupertinoIcons.person, size: 27),
                  title: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.account_balance_wallet_outlined,
                      size: 27),
                  title: const Text(
                    "Payment",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.notifications_none_sharp, size: 27),
                  title: const Text(
                    "Notification",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading:
                      const Icon(CupertinoIcons.checkmark_shield, size: 27),
                  title: const Text(
                    "Security",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.error_outline_sharp, size: 27),
                  title: const Text(
                    "Help",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.remove_red_eye_outlined, size: 27),
                  trailing: Transform.scale(
                    scale: .7,
                    child: Switch.adaptive(
                      value: true,
                      onChanged: (onChanged) {},
                    ),
                  ),
                  title: const Text(
                    "Dark Theme",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.logout,
                    size: 27,
                    color: Colors.red,
                  ),
                  title: const Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
