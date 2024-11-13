import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('TextField'),
      ),
      body: Center(
        child: Container(
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'Enter Your Email ID',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.blue, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide:
                        const BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  // suffixIcon: IconButton(
                  //   icon: Icon(
                  //     Icons.remove_red_eye,
                  //     color: Colors.orange,
                  //   ),
                  //   onPressed: () {},
                  // ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.orange,
                  ),
                ),
              ),
              const SizedBox(height: 11),
              TextField(
                keyboardType: TextInputType.phone,
                controller: passText,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Enter Your Mobile Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  // suffixIcon: IconButton(
                  //   icon: Icon(
                  //     Icons,
                  //     color: Colors.orange,
                  //   ),
                  //   onPressed: () {},
                  // ),
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.orange,
                  ),
                ),
              ),
              const SizedBox(height: 11),

              // TextField(
              //   keyboardType: TextInputType.datetime,
              //   controller: passText,
              //   obscureText: true,
              //   obscuringCharacter: '*',
              //   decoration: InputDecoration(
              //     // hintText: 'Enter Your Mobile Number',
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(11),
              //       borderSide: const BorderSide(color: Colors.red),
              //     ),
              //     // suffixIcon: IconButton(
              //     //   icon: Icon(
              //     //     Icons,
              //     //     color: Colors.orange,
              //     //   ),
              //     //   onPressed: () {},
              //     // ),
              //     prefixIcon: Icon(
              //       Icons.date_range_outlined,
              //       color: Colors.orange,
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 11),

              TextField(
                // keyboardType: TextInputType.datetime,
                controller: passText,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.orange,
                    ),
                    onPressed: () {},
                  ),
                  prefixIcon: Icon(
                    Icons.password,
                    color: Colors.orange,
                  ),
                ),
              ),
              const SizedBox(height: 40),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      String uEmail = emailText.text;
                      String uPass = passText.text;
                      print('Login - Email: $uEmail, Pass: $uPass');
                    },
                    child: const Text('Login'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      // Action for Register button
                      // print('Register button pressed');
                    },
                    child: const Text('Register'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
