import 'package:em_app/em_lib/em_si_su/signin_page.dart';
import 'package:em_app/em_lib/em_si_su/signup_page.dart';
import 'package:flutter/material.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent
                    ),
                  ),
                  /*
                  //To display Logo
                  Image.asset(
                    "images/logo.png",
                    //width: MediaQuery.of(context).size.width * .40,
                  ),
                  */
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.25,
                      child: const Text(
                        "Welcome To Cool App",
                        style: TextStyle(
                            fontSize: 26.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.05,
                      child: const Text("EM App - Banner Tagline",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const SizedBox(
                width: 300,
                height: 150,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent
                    ),
                  ),
              ),
              /*
              //To display Splash Screen Image
              Image.asset(
                "images/first_screen.png",
                width: MediaQuery.of(context).size.width * .40,
              ),
              */
              const SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ));
                      },
                      child: const Text("Sign In")
                      ),
                     const SizedBox(
                        width: 20,
                      ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ));
                      },
                      child: const Text("Sign Up")
                      ),
                  /*
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DashboardPage(),
                        ));
                      },
                      child: const Text("View Demo")
                      )
                      */
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
