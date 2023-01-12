import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('CheckBox')),
        ),
        body: const Center(child: HomePage()),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool termsAndConditionsChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: termsAndConditionsChecked,
      onChanged: (currentlyChecked) =>
          setState(() => termsAndConditionsChecked = currentlyChecked!),
      title: const Text(
        "Accetta termini e condizioni d'uso",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/*
Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Checkbox(
        value: termsAndConditionsChecked,
        onChanged: (currentlyChecked) =>
            setState(() => termsAndConditionsChecked = currentlyChecked!),
      ),
      const Text(
        "Accetta termini e condizioni d'uso",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ]);
*/
