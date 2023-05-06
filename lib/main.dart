import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 80),
                  width: 150,
                  height: 150,
                  child: Image.asset("images/image.png")),
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              "Enter Phone Number",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: IntlPhoneField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixText: "| ",
                  prefixStyle:
                      TextStyle(fontWeight: FontWeight.bold, height: 1),
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                initialCountryCode: "IN",
              ),
            ),
            const Text(
              "We'll Send You A Code By SMS To Confirm Your Phone Number",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Continue"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
