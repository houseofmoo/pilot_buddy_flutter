import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  var assEnd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
      child: Center(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Heading",
              ),
              keyboardType: TextInputType.number,
              onChanged: (val) {
                int? heading = int.tryParse(val);
                if (heading == null) {
                  assEnd.text = "Invalid heading";
                  return;
                }

                int tail = (heading + 180) % 360;
                if (tail < 10) {
                  assEnd.text = "00$tail";
                } else if (tail < 100) {
                  assEnd.text = "0$tail";
                } else {
                  assEnd.text = tail.toString();
                }
              },
              initialValue: "",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: "Ass End"
              ),
              readOnly: true,
              textAlign: TextAlign.center,
              controller: assEnd,
              style: const TextStyle(
                fontSize: 30
              ),
            ),

          ],
        ),
      ),
    );
  }
}
