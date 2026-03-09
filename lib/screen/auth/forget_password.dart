import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:project_6/core/conestate.dart';

class ForgetPassword extends StatefulWidget {
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool _obscurePassword = true;

  TextEditingController _controllerConfirmPassword = TextEditingController();

  TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryColor,

      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 10,
            child: Icon(Icons.arrow_back_ios, color: sacandryColor),
          ),
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Set Password',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: white,
              ),
              width: size.width,
              height: size.height * 0.8,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',

                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Password ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      obscureText: _obscurePassword,

                      controller: _controllerPassword,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: sacandryColor,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),

                        filled: true,
                        fillColor: yellow,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // تدوير الزوايا
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Confirm Password ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      obscureText: _obscurePassword,

                      controller: _controllerConfirmPassword,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: sacandryColor,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),

                        filled: true,
                        fillColor: yellow,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(
                            12,
                          ), // تدوير الزوايا
                        ),
                      ),
                    ),

                    SizedBox(height: 50),

                    Center(
                      child: SizedBox(
                        width: 250,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: sacandryColor,
                          ),
                          onPressed: () {
                            context.go('/on_boarding');
                          },
                          child: Text(
                            'Create New Password',
                            style: TextStyle(color: white, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
