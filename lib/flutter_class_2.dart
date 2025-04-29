
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class FlutterClass2 extends StatelessWidget {
  const FlutterClass2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      // backgroundColor: Colors.grey.withOpacity(0.7),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('English (US) ˅',
          style: TextStyle(
          fontSize: 14, // Change this value to your desired text size
          color: Colors.black, // Optional: set text color if needed
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),


      body: SingleChildScrollView(


        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 40),
              Image.asset(
                'assets/icon/facebook.png', // Add your facebook logo in assets
                height: 60,
              ),
              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // left-align text
                  children: [
                    Divider(thickness: 1, color: Colors.grey),
                    Text.rich(
                      TextSpan(
                        text: 'By proceeding, you agree to ',
                        style: TextStyle(fontSize: 14),
                        children: [
                          TextSpan(
                            text: "GP's Terms",
                            style: TextStyle(color: Color(0xFF056DF4),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          TextSpan(
                            text:
                            ',\nwhich includes letting Facebook request\nand receive your phone number.\n',
                          ),
                          TextSpan(
                            text: 'Change Settings',
                            style: TextStyle(color: Color(0xFF056DF4),
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Divider(thickness: 1, color: Colors.grey),
                  ],
                ),
              ),




              SizedBox(height: 20),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Mobile number or email',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey, // Gray color when not focused
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.black, // Black border on focus
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey, // Gray color when not focused
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.black, // Black border on focus
                      width: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (

                    ) {
                  // Fluttertoast.showToast(
                  //   msg: "Congratulation your creadetenials are hacked",
                  //   toastLength: Toast.LENGTH_SHORT,
                  //   gravity: ToastGravity.BOTTOM, // can be TOP, CENTER, BOTTOM
                  //   timeInSecForIosWeb: 1,
                  //   backgroundColor: Colors.black,
                  //   textColor: Colors.white,
                  //   fontSize: 16.0,
                  // );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Congratulation your creadetenials are hacked'),
                      duration: Duration(seconds: 2),
                    ),
                  );

                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white, // Change to any color you want
                  ),

                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF056DF4),
                  minimumSize: Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SizedBox(height: 60),
              OutlinedButton(
                onPressed: () {},
                child: Text('Create new account'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.blue),
                  foregroundColor: Colors.blue,
                  minimumSize: Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              // Text(
              //   'Meta',
              //   style: TextStyle(
              //     fontFamily: 'sans-serif',
              //     fontWeight: FontWeight.w600,
              //     fontSize: 16,
              //     color: Colors.grey[600],
              //   ),
              // ),

              Image.asset(
                'assets/icon/meta.png', // Add your facebook logo in assets
                height: 80,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),


      ),


    );
  }
}
