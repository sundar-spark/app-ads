import 'package:ads_app/UI/Login_page/login_page.dart';
import 'package:ads_app/UI/profile_page/bloc/profile_bloc.dart';
import 'package:ads_app/UI/profile_page/bloc/profile_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        phoneNumberController.text = state.userData?.phoneNumber ?? '';
        addressController.text = state.userData?.address ??'';
        emailController.text = state.userData?.emailId ?? '';
      },
      builder: (context, state) {
        return Container(
            padding: const EdgeInsets.all(16),
            // color:Colors.amber,
            child: Center(
                child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(
                            'lib/assets/images/original-2b1144775c41b50133edf852dd54f347.png'),
                      ),
                      Text(state.userData?.name ?? 'NULL',
                          style: Theme.of(context).textTheme.headlineLarge),
                      Text(state.userData?.howlCode ?? 'NULL',
                          style: Theme.of(context).textTheme.bodyLarge)
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: phoneNumberController,
                          obscureText: true,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(letterSpacing: 5),
                          decoration: const InputDecoration(
                              labelText: "Phone Number",
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: emailController,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(letterSpacing: 5),
                          decoration: const InputDecoration(
                              labelText: "Email-ID",
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          maxLines: 8,
                          controller: addressController,
                          style: Theme.of(context).textTheme.bodyMedium,
                          decoration: const InputDecoration(
                              labelText: "Your Address",
                              alignLabelWithHint: true,
                              border: OutlineInputBorder()),
                        ),
                        Text(
                          "Your Address will not be revealed to anyone unless a delivery is requested",
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    )),
                const Spacer(),
                ElevatedButton(
                    onPressed: () async {
                      FirebaseAuth fba = FirebaseAuth.instance;
                      await fba.signOut();
                      if (fba.currentUser == null) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                            (value) => false);
                      }
                    },
                    child: const Text("Logout"))
              ],
            )));
      },
    );
  }
}
