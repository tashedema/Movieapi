import 'package:flutter/material.dart';
import 'package:movie_1/providers/count_provider.dart';
import 'package:movie_1/widgets/count/count_card.dart';
import 'package:provider/provider.dart';

class CountScreen extends StatelessWidget {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // we always access the variable under widget in contrast to stateful widgets
    // where we declare the variables before widgets
    var count = Provider.of<CountProvider>(context).count;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter')
      ),
      body: Column(
        children: [
          SizedBox(
            height:300,
            child: Center(
              child: Text(count.toString(), style: const TextStyle(fontSize: 36),),
            ),
          ),
          const CountCard()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // accessing functions, make sure you set the listen parameter to false
          // for accessing methods
          Provider.of<CountProvider>(context, listen: false).incCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}