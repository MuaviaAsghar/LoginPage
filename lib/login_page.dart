import 'package:flutter/material.dart';
import 'package:myapp/colors.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    // bool checkedValue = false; // Initialize the checkedValue for the checkbox

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sign In",
          style: TextStyle(fontFamily: 'Siro', fontSize: 30),
        ),
        toolbarHeight: 100,
        backgroundColor: customgreen,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  hintStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  labelText: "Username",
                  hintText: 'Enter an email',
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: customgreen,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: customgreen,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15, top: 25),
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelStyle: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                  hintStyle: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                  labelText: "Password",
                  hintText: 'Enter a password',
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: customgreen,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 3,
                      color: customgreen,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            // Remember Me checkbox
            // CheckboxListTile(
            //   title: const Text(
            //     "Remember Me",
            //   ),
            //   value: checkedValue,
            //   onChanged: (newValue) {
            //     FocusManager.instance.primaryFocus?.unfocus();
            //     setState(() {
            //       checkedValue = newValue!;
            //     });
            //   },
            //   contentPadding: const EdgeInsets.only(left: 15, right: 15, top: 0),
            //   controlAffinity: ListTileControlAffinity.leading,
            // ),
            // Forget Password button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextButton(
                    child: const Text(
                      "Forget Username/Password",
                    ),
                    onPressed: () {
                      // Handle the onPressed event
                    },
                  ),
                )
              ],
            ),
            const SizedBox(height: 50,git initwidth: 300, child: Card(color: customgreen,),)
          ],
        ),
      ),
    );
  }
}


// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

// @override
// Widget build(BuildContext context) {
//   bool checkedValue = false; // Initialize the checkedValue for the checkbox
  
//   return Scaffold(
//     appBar: AppBar(
//       centerTitle: true,
//       title: const Text(
//         "Sign In",
//         style: TextStyle(fontFamily: 'Siro', fontSize: 30),
//       ),
//       toolbarHeight: 100,
//       backgroundColor: customgreen,
//       shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
//     ),
//     body: Padding(
//       padding: const EdgeInsets.only(top: 100),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: TextField(
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 labelStyle: const TextStyle(
//                     fontSize: 16, fontWeight: FontWeight.bold),
//                 hintStyle: const TextStyle(
//                     fontSize: 16, fontWeight: FontWeight.bold),
//                 labelText: "Username",
//                 hintText: 'Enter an email',
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(
//                     width: 3,
//                     color: customgreen,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(
//                     width: 3,
//                     color: customgreen,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
//             child: TextField(
//               obscureText: true,
//               keyboardType: TextInputType.visiblePassword,
//               decoration: InputDecoration(
//                 labelStyle: const TextStyle(
//                     fontSize: 17, fontWeight: FontWeight.bold),
//                 hintStyle: const TextStyle(
//                     fontSize: 17, fontWeight: FontWeight.bold),
//                 labelText: "Password",
//                 hintText: 'Enter a password',
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(
//                     width: 3,
//                     color: customgreen,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(
//                     width: 3,
//                     color: customgreen,
//                   ),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//               ),
//             ),
//           ),
//           // Remember Me checkbox
//           CheckboxListTile(
//             title: const Text(
//               "Remember Me",
              
//             ),
//             value: checkedValue,
//             onChanged: (newValue) {
//               FocusManager.instance.primaryFocus?.unfocus();
//               setState(() {
//                 checkedValue = newValue!;
//               });
//             },
//             contentPadding: EdgeInsets.only(left: 15, right: 15, top: 0),
//             controlAffinity: ListTileControlAffinity.leading,
//           ),
//           // Forget Password button
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextButton(
//                 child: Text(
//                   "Forget Password",
                  
//                 ),
//                 onPressed: () {
//                   // Handle the onPressed event
//                 },
//               )
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }


