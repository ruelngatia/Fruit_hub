import 'package:flutter/material.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:get/get.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        width: double.infinity,
        height: 450,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              const Center(
                child: SizedBox(
                  height: 10,
                  width: 100,
                  child: Divider(thickness: 3),
                ),
              ),
              const SizedBox(height: 24),
              const Text('Card Holders Name'),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(hintText: 'John doe'),
              ),
              const SizedBox(height: 16),
              const Text('Card Number'),
              const SizedBox(height: 12),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: '0712345678'),
              ),
              const SizedBox(height: 12),
              const SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Date'),
                        SizedBox(height: 12),
                        SizedBox(
                          width: 120,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(hintText: '02/23'),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cvv'),
                        SizedBox(height: 12),
                        SizedBox(
                          width: 120,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(hintText: '123'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                          style: Theme.of(context)
                              .elevatedButtonTheme
                              .style!
                              .copyWith(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          side: BorderSide(
                                              color: Color(Konstants.orange),
                                              width: 1))),
                                  elevation: MaterialStateProperty.all(0)),
                          onPressed: () {
                            Get.back();
                            Get.snackbar(
                              'Details confirmed',
                               '',);
                            Get.offAndToNamed('/track_order');                            
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'Confirm Payment',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Color(Konstants.orange)),
                            ),
                          )),
                      
                  ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

}
