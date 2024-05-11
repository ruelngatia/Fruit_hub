import 'package:flutter/material.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:get/get.dart';

class OrderComplete extends StatelessWidget {
  const OrderComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 164,
              height: 164,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(Konstants.borderGreen)),
                  borderRadius: BorderRadius.circular(80),
                  color: Color(Konstants.lightGreen)),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Color(Konstants.borderGreen)),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 42,
                    weight: 200,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Congartulations!!!',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 8),
            Text(
              textAlign: TextAlign.center,
              'Your order have been taken and is being attended to.',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/track_order');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Track order',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                )
              ),
            const SizedBox(height: 24),
            ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                            color: Color(Konstants.orange), width: 1))),
                    elevation: MaterialStateProperty.all(0)),
                onPressed: () {
                  Get.toNamed('/home_screen');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Continue shopping',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Color(Konstants.orange)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
