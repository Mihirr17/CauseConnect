import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltp/utils/constants.dart';
import 'package:ltp/widgets/checkbox.dart';
import 'package:ltp/widgets/custom_input.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/main_icon.png',
                  color: kMainColor,
                  scale: 3.5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: 'Create a New Account'
                      .text
                      .minFontSize(24)
                      .fontWeight(FontWeight.w600)
                      .maxFontSize(26)
                      .make(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: 'Please fill in the required information'
                      .text
                      .minFontSize(18)
                      .make(),
                ),
                const SizedBox(height: 20),
                CustomInput(
                  title: 'Email Address',
                  controller: emailController,
                ),
                const SizedBox(height: 20),
                CustomInput(
                  title: 'Password',
                  controller: passwordController,
                  isPassword: true,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CheckBoxx(),
                      'I agree to the Terms & Conditions'.text.make(),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final email = emailController.text.trim();
                    final password = passwordController.text.trim();

                    if (email.isEmpty || password.isEmpty) {
                      // Display an error message or show a dialog indicating that the email or password is empty
                      print('Sign up error: Email or password is empty');
                    } else {
                      try {
                        final UserCredential userCredential =
                            await _auth.createUserWithEmailAndPassword(
                          email: email,
                          password: password,
                        );
                        // Sign up successful, handle the user session or navigate to the next screen
                        Get.offAllNamed('/wrapper');
                      } catch (e) {
                        // Handle the sign-up error, display an error message, or show a dialog
                        print('Sign up error: $e');
                      }
                    }
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: 'Sign Up'
                          .text
                          .minFontSize(18)
                          .fontWeight(FontWeight.w600)
                          .make(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      'Already have an account?'.text.minFontSize(16).make(),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () => Get.toNamed('/signinpage'),
                        child: 'Log In'
                            .text
                            .fontWeight(FontWeight.w500)
                            .minFontSize(16)
                            .color(const Color.fromARGB(255, 8, 12, 236))
                            .make(),
                      ),
                    ],
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

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ltp/utils/constants.dart';
// import 'package:ltp/widgets/checkbox.dart';
// import 'package:ltp/widgets/custom_input.dart';
// import 'package:velocity_x/velocity_x.dart';
//
// import 'package:firebase_auth/firebase_auth.dart';
//
//
// class SignUpPage extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: SingleChildScrollView(
//             child: Column(
//               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Image.asset(
//                   'assets/main_icon.png',
//                   color: kMainColor,
//                   scale: 3.5,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 10.0),
//                   child: 'Create an Account'
//                       .text
//                       .minFontSize(24)
//                       .fontWeight(FontWeight.w600)
//                       .maxFontSize(26)
//                       .make(),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 10.0),
//                   child: 'Sign Up now to get started with your account'
//                       .text
//                       .minFontSize(18)
//                       .make(),
//                 ),
//                 InkWell(
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(vertical: 10),
//                     decoration: BoxDecoration(
//                         border: Border.all(
//                           color: kMainColor,
//                         ),
//                         borderRadius: BorderRadius.circular(5)),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           'assets/search.png',
//                           scale: 20,
//                         ),
//                         const SizedBox(
//                           width: 30,
//                         ),
//                         'Sign Up with Google'.text.minFontSize(18).make()
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Expanded(
//                         child: Divider(
//                           color: Colors.black54,
//                           //thickness: 1.0,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 8.0, vertical: 5),
//                         child: 'OR'.text.make(),
//                       ),
//                       const Expanded(
//                         child: Divider(
//                           color: Colors.black54,
//                           //thickness: 1.0,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 CustomInput(
//                   title: 'Full Name',
//                   controller: emailController,
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 CustomInput(
//                   title: 'Email Address',
//                   controller: emailController,
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 CustomInput(
//                   title: 'Password',
//                   controller: passwordController,
//                   isPassword: true,
//
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 CustomInput(
//                   title: 'Confim Password*',
//                   controller: passwordController,
//                   isPassword: true,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 10.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const CheckBoxx(),
//                       InkWell(
//                         child: Padding(
//                           padding: const EdgeInsets.only(right: 10.0),
//                           child: Row(
//                             children: [
//                               'I have agreed to'
//                                   .text
//                                   .fontWeight(FontWeight.w600)
//                                   .make(),
//                               ' Terms of Services'
//                                   .text
//                                   .color(
//                                     const Color.fromARGB(255, 4, 25, 219),
//                                   )
//                                   .fontWeight(FontWeight.w600)
//                                   .make(),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Get.offAllNamed('/wrapper');
//                   },
//                   child: Center(
//                     child: Padding(
//                       padding: const EdgeInsets.all(18.0),
//                       child: 'Get Started'
//                           .text
//                           .minFontSize(18)
//                           .fontWeight(FontWeight.w600)
//                           .make(),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 25.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       'Already have an account?'.text.minFontSize(16).make(),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       InkWell(
//                         onTap: (() => Get.back()),
//                         child: 'Sign In'
//                             .text
//                             .fontWeight(FontWeight.w500)
//                             .minFontSize(16)
//                             .color(
//                               const Color.fromARGB(255, 8, 12, 236),
//                             )
//                             .make(),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
