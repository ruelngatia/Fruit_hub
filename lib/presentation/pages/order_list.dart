import 'package:flutter/material.dart';
import 'package:fruit_hub/presentation/widgets/card_details.dart';
import 'package:fruit_hub/presentation/widgets/leading_button.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:get/get.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const LeadingBtn(),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Container(height: 40),
        ),
        leadingWidth: 90,
        title: Text(
          'My basket',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          ListView.separated(
            shrinkWrap: true,
            itemCount: 3,
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  'assets/images/lgSalad.png',
                  width: 40,
                  height: 40,
                ),
                title: const Text('Quinoa fruit salad'),
                subtitle: const Text('2 packs'),
                trailing: Text(
                  '\$ 100',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              );
            },
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w500)),
                        Text('\$ 2,000',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(fontWeight: FontWeight.w400))
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.bottomSheet(
                            const DeliveryBottomSheet()
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 36.0),
                          child: Text('Checkout',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.white)),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DeliveryBottomSheet extends StatelessWidget {
  const DeliveryBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20))),
      width: double.infinity,
      height: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0),
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
            const Text('Deliver address'),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                  hintText: '10th avenue, Narobi'),
            ),
            const SizedBox(height: 16),
            const Text('Number we can call'),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(
                  hintText: '0712345678'),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        style: Theme.of(context)
                            .elevatedButtonTheme
                            .style!
                            .copyWith(
                                backgroundColor:
                                    MaterialStateProperty.all(
                                        Colors.white),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(
                                                8),
                                        side: BorderSide(
                                            color: Color(
                                                Konstants
                                                    .orange),
                                            width: 1))),
                                elevation:
                                    MaterialStateProperty.all(0)),
                        onPressed: () {
                          Get.toNamed('/order_complete');
                        },
                        child: Padding(
                          padding: const EdgeInsets
                              .symmetric(
                              horizontal: 16.0),
                          child: Text(
                            'Pay on delivery',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Color(
                                        Konstants
                                            .orange)),
                          ),
                        )),
                    ElevatedButton(
                        style: Theme.of(context)
                            .elevatedButtonTheme
                            .style!
                            .copyWith(
                                backgroundColor:
                                    MaterialStateProperty.all(
                                        Colors.white),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(
                                                8),
                                        side: BorderSide(
                                            color: Color(
                                                Konstants
                                                    .orange),
                                            width: 1))),
                                elevation:
                                    MaterialStateProperty.all(0)),
                        onPressed: () {
                          Get.back();
                          Get.bottomSheet(
                            const CardDetails()
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets
                              .symmetric(
                              horizontal: 16.0),
                          child: Text(
                            'Pay with card',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Color(
                                        Konstants
                                            .orange)),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
