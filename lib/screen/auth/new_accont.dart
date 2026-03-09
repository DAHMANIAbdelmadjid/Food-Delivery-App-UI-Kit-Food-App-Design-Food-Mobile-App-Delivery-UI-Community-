import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:project_6/core/conestate.dart';

class NewAccount extends StatefulWidget {
  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  bool _obscurePassword = true;

  TextEditingController _controllerFullName = TextEditingController();

  TextEditingController _controllerPassword = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();

  TextEditingController _controllerMobileNumber = TextEditingController();
  TextEditingController _controllerDateOfBirth = TextEditingController();

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
                'New Account',
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        controller: _controllerFullName,
                        decoration: InputDecoration(
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
                        'Mobile Number',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: _controllerMobileNumber,
                        decoration: InputDecoration(
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
                        'Date of birth',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      TextFormField(
                        controller: _controllerDateOfBirth,
                        readOnly: true, // يمنع الكتابة اليدوية
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: yellow,
                          suffixIcon: Icon(
                            Icons.calendar_today,
                          ), // أيقونة تقويم
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime(2000),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(), // يمنع المستقبل
                          );

                          if (pickedDate != null) {
                            _controllerDateOfBirth.text =
                                "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                          }
                        },
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _controllerEmail,
                        decoration: InputDecoration(
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
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: sacandryColor,
                            ),
                            onPressed: () {
                              context.go('/on_boarding');
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Center(child: Text('or sign up with')),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: orange,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  'assets/icon/Gmail.svg',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),

                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: orange,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  'assets/icon/Facebook.svg',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),

                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: orange,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset('assets/icon/Mark.svg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text('Already have an account? '),
                          InkWell(
                            onTap: () {
                              context.go('/logIn');
                            },
                            child: Text(
                              'Log in',
                              style: TextStyle(color: sacandryColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
