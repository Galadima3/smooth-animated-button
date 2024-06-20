import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_animated_button/neu_button.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

final buttonProvider = StateProvider<bool>((ref) => false);

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  // bool isButtonPressed = false;
  // void buttonPressed() {
  //   setState(() {
  //     if (isButtonPressed == false) {
  //       isButtonPressed = true;
  //     } else if (isButtonPressed == true) {
  //       isButtonPressed = false;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final isButtonPressed = ref.watch(buttonProvider);
    return Scaffold(
      //rbackgroundColor: Colors.grey.shade300,
      body: Center(
        child: NeuButton(
          onTap: () =>
              ref.read(buttonProvider.notifier).update((state) => !state),
          isButtonPressed: isButtonPressed,
        ),
      ),
    );
  }
}
