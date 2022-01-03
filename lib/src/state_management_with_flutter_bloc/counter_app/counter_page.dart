import 'package:every_day/src/state_management_with_flutter_bloc/counter_app/bloc/counter_bloc.dart';
import 'package:every_day/src/state_management_with_flutter_bloc/counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(.3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  // context.read<CounterCubit>().decremend(); // with cubit
                  context
                      .read<CounterBlockBloc>()
                      .add(CounterDecrementPressed()); // with block
                },
                child: const Icon(Icons.remove),
              ),
              // BlocConsumer<CounterCubit, CounterState>(
              //   listener: (context, state) {
              //     if (state.wasIncremed == true) {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         const SnackBar(
              //           content: Text("incremented"),
              //           duration: Duration(milliseconds: 800),
              //         ),
              //       );
              //     }

              //     if (state.wasIncremed == false) {
              //       ScaffoldMessenger.of(context).showSnackBar(
              //         const SnackBar(
              //           content: Text("decremented"),
              //           duration: Duration(milliseconds: 800),
              //         ),
              //       );
              //     }
              //   },
              //   builder: (context, state) {
              //     return Text(
              //       state.incrementValue.toString(),
              //       style: const TextStyle(
              //         fontSize: 26,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     );
              //   },
              // ),

              BlocBuilder<CounterBlockBloc, CounterBlockState>(
                builder: (contex, state) {
                  return Text("${state.countervalue}",
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ));
                },
              ),
              FloatingActionButton(
                onPressed: () {
                  //context.read<CounterCubit>().incremend(); // with cubit
                  context
                      .read<CounterBlockBloc>()
                      .add(CounterIncrementPressed());
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
