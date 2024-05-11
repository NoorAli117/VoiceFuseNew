import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  bool _isInAsyncCall =
      false; // Variable to track whether async call is in progress

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Progress HUD Demo'),
        backgroundColor: Colors.blue,
      ),
      // Display modal progress HUD (heads-up display, or indicator)
      // when in async call
      body: ModalProgressHUD(
        inAsyncCall: _isInAsyncCall, // Track async call status
        // Demo of some additional parameters
        opacity: 0.5,
        progressIndicator: const CircularProgressIndicator(),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: buildLoginForm(context),
          ),
        ),
      ),
    );
  }

  // Method to simulate an API call
  Future<void> _simulateAPICall() async {
    setState(() {
      _isInAsyncCall = true; // Set to true when API call starts
    });

    // Simulate API call delay
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isInAsyncCall = false; // Set to false when API call completes
    });
  }

  // Example method to build login form (replace with your own widget)
  Widget buildLoginForm(BuildContext context) {
    return Column(
      children: [
        // Add your login form widgets here
        ElevatedButton(
          onPressed: () {
            // Call _simulateAPICall method to simulate API call
            _simulateAPICall();
          },
          child: const Text('Simulate API Call'),
        ),
      ],
    );
  }
}
