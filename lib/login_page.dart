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
    bool checkedValue = false; // Initialize the checkedValue for the checkbox

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 110),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  
                  // keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
      //              
                    prefixIcon: const Icon(Icons.email_sharp
                    ,color: customgreen,
                    ),
                    
                    // labelStyle: const TextStyle(
                    //     fontSize: 16, fontWeight: FontWeight.bold),
                    hintStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                    // labelText: "Email",
                    hintText: 'Enter an email',
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 3,
                        color: customgreen,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 3,
                        color: customgreen,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 18),
                child: TextField(
                  
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    
                    prefixIcon:const Icon(Icons.password_sharp,color:customgreen),
                    // labelStyle: const TextStyle(
                        // fontSize: 17, fontWeight: FontWeight.bold),
                    hintStyle: const TextStyle(
                        fontSize: 16, 
                        fontWeight: FontWeight.w500),
                    // labelText: "Password",
                    hintText: 'Enter a password',
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 3,
                        color: customgreen,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 3,
                        color: customgreen,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Checkbox(
                            checkColor: customgreen,
                            value: checkedValue,
                            onChanged: (newValue) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              setState(() {
                                checkedValue = newValue!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text('Remember me')
                      ],
                    ),
                    TextButton(
                      onPressed: (
                         
                      ) {
                        showImageAlertDialog(context);
                        // Handle "Forgot Password" button press
                      },
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: customgreen,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: customgreen,
                    minimumSize: const Size(400, 55),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    textStyle: const TextStyle(
                      fontFamily: 'Siro',
                      color: customgreen,
                      fontSize: 25,
                    ),
                  ),
                  child: const Text(
                    'Signup',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Siro',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 110),
                child: Text("Don't have a account?"),
              ),
              
              TextButton(onPressed: (){

              }, child: const Padding(
                padding: EdgeInsets.only(top:0,bottom: 40),
                child: Text("SIGN UP NOW",style: TextStyle(color: customgreen),),
              ))
              
            ],
            
          ),
          
        ),
        
      ),
      
    );
  }
}




  void showImageAlertDialog(BuildContext context) { 
    showDialog( 
      context: context, 
      builder: (BuildContext context) { 
        return AlertDialog( 
          title: const Text('Image Alert Dialog'), 
          content: Column( 
            mainAxisSize: MainAxisSize.min, 
            children: <Widget>[ 
              Image.asset( 
                'assets/images/Almonds.png', // Replace with your image path 
                width: 250,
                height: 100, // Adjust image width as needed 
              ), 
              const SizedBox(height: 20), // Adjust spacing as needed 
            
            ], 
          ), 
          actions: <Widget>[ 
            ElevatedButton( 
              onPressed: () { 
                Navigator.of(context).pop(); // Close the AlertDialog 
              }, 
              child: const Text('Close'), 
            ), 
          ], 
        ); 
      }, 
    ); 
  } 
