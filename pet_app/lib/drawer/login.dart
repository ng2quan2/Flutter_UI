import 'package:flutter/material.dart';
import 'package:pet_app/app/homeScreen.dart';
import 'package:pet_app/common/common.dart';

class LoginRoute extends StatelessWidget {
  const LoginRoute({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final TextEditingController _usernameController = TextEditingController();
    // ignore: no_leading_underscores_for_local_identifiers
    final TextEditingController _passwordController = TextEditingController();

    void result() async {
      // ignore: no_leading_underscores_for_local_identifiers
      String _username = _usernameController.text;
      // ignore: no_leading_underscores_for_local_identifiers
      String _password = _passwordController.text;
      if (_username.isEmpty || _password.isEmpty) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            backgroundColor: Colors.grey[100],
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Error',
                  style: TextStyle(color: kTextColor),
                ),
              ],
            ),
            content: const Text(
              'Please Fill in the box completely!',
              style: TextStyle(color: Colors.black87),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('OK', style: TextStyle(color: kTextColor)),
                  ],
                ),
              ),
            ],
          ),
        );
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => homeScreen()));
      }
    }

    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/cat_logo.png',
                      height: size.height * 0.2,
                      width: size.height * 0.4,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Good ${greeting()}',
                      style: const TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      child: TextFormField(
                        controller: _usernameController,
                        // initialValue: _username,
                        style: const TextStyle(color: Colors.black),
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: login_username,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      child: TextFormField(
                        controller: _passwordController,
                        // initialValue: _password,
                        style: const TextStyle(color: Colors.black),
                        obscureText: true,
                        
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: login_password,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forgot password',
                              style: TextStyle(color: kTextColor),
                            )
                          ],
                        )),
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12)),
                      child: TextButton(
                          onPressed: () {
                            result();
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Or you can sign in by',
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white.withOpacity(0.7)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/images/gg_icon.png',
                                height: 40,
                                width: 40,
                              )),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white.withOpacity(0.7)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.apple),
                            iconSize: 48,
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white.withOpacity(0.7)),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.facebook),
                            iconSize: 48,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 170, 154, 153),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homeScreen()));
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Discover App',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

AppBar buildAppBar(context) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    elevation: 0,
    leading: const Icon(
      Icons.star_border_purple500_rounded,
      color: kTextColor,
    ),
  );
}
