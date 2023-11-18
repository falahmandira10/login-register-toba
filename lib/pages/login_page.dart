import 'package:flutter/material.dart';
import 'package:login_register_toba/pages/appbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ok = true;
  bool flag = true;
  var check = Icon(Icons.check_box_outline_blank);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const UpBar(),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.92,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF527EE7),
                  Color(0xFF15CAD7),
                  Color(0xFF1CC2D9),
                  Color(0xFF20BCDA),
                  Color(0xFF0FD3D5),
                ],
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 0, 30),
                child: Text(
                  "Welcome \nBack!",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: ListView(children: [
                      Image.asset(
                          "assets/images/undraw_Ordinary_day_re_v5hy_1.png",
                          height: 120),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/logo_1.png"),
                          Text(" Account")
                        ],
                      ),
                      Container(
                        height: 70,
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Email",
                            label: Text("Email"),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 70,
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: ok,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Password",
                            label: Text("Password"),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  ok ? Icons.visibility : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  if (ok) {
                                    ok = false;
                                    return;
                                  }
                                  ok = true;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    if (flag) {
                                      check = Icon(Icons.check_box_outlined);
                                      flag = false;
                                      return;
                                    }
                                    check = Icon(Icons.check_box_outline_blank);
                                  },
                                  icon: check),
                              Text(
                                "Remember me",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color(0xFF527EE7),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xFF527EE7)),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              )),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Not a member?"),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  color: Color(0xFF527EE7),
                                ),
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/images/vector_3.png"),
                            Text("OR"),
                            Image.asset("assets/images/vector_3.png")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 1),
                                  spreadRadius: 0.1,
                                  blurRadius: 1)
                            ]),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 70),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                    "assets/images/flat-color-icons_google.png"),
                                Text(
                                  "Continue with Google",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
