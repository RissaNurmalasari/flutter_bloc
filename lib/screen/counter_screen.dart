import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_flutter/cubit/counter/counter_cubit.dart';
// ignore: unused_import
import 'package:bloc_flutter/cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context); // Get the Cubit

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc - Cubit Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: const TextStyle(fontSize: 40),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Decrement button
                ElevatedButton(
                  onPressed: () => counterCubit.decrement(),
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20.0),
                // Increment button
                ElevatedButton(
                  onPressed: () => counterCubit.Increment(), // Corrected method name to 'increment'
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
