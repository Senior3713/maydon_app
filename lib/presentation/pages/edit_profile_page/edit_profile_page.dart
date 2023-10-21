import 'package:flutter/material.dart';
import 'package:maydon_app/presentation/pages/edit_profile_page/views/textfield_view.dart';
import 'package:maydon_app/presentation/pages/edit_profile_page/views/update_button.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameCtrl = TextEditingController();
    TextEditingController phoneCtrl = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60,
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              CustomTextField(hintText: "Full Name", controller: nameCtrl),
              const SizedBox(height: 25),
              CustomTextField(
                hintText: "Phone Number",
                controller: phoneCtrl,
                prefix: "+998 ",
              ),
              const Spacer(),
              UpdateButton(
                onPressed: () {
                  if (nameCtrl.text.trim().isEmpty ||
                      phoneCtrl.text.trim().isEmpty ||
                      RegExp(r"^/+9989[0-9]{8}")
                          .hasMatch(phoneCtrl.text.trim())) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please enter valid phone or name!!!"),
                        backgroundColor: Colors.red,
                      ),
                    );
                    return;
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
