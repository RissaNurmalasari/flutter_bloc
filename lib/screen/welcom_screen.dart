import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:bloc_flutter/cubit/counter/counter_cubit.dart';
import 'package:bloc_flutter/screen/counter_screen.dart'; // Import CounterScreen

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> 
 {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: 
 Colors.blue.shade900,
      appBar: AppBar(
        title: null,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 

          children: [
            // ... existing WelcomeScreen content

            const SizedBox(height: 20),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)
 => const CounterScreen()),
                );
              },
              child: const Text('Go to Counter Screen'),
            ),
          ],
        ),
      ),
    );
  }
}