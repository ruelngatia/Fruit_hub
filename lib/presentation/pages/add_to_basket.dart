import 'package:flutter/material.dart';
import 'package:fruit_hub/presentation/widgets/leading_button.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:get/get.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(Konstants.orange),
      appBar: AppBar(
          leadingWidth: 100,
          leading: const LeadingBtn(),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Container(height: 40),
          )
        ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Image.asset('assets/images/lgSalad.png',
                height: 176, width: 176),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 20),
                  child: Text(
                    'Quinoa fruit salad',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Theme(
                          data: ThemeData(
                              elevatedButtonTheme: ElevatedButtonThemeData(
                                  style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.zero),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.transparent),
                                      shape: MaterialStateProperty.all(
                                          const CircleBorder(
                                              side: BorderSide(width: 0.7)))))),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Center(
                                child: Icon(
                              Icons.remove,
                              color: Colors.black,
                              size: 17,
                              weight: 100,
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Theme(
                          data: ThemeData(
                              elevatedButtonTheme: ElevatedButtonThemeData(
                                  style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.zero),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(Konstants.lightOrange)),
                                      shape: MaterialStateProperty.all(
                                          const CircleBorder())))),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Center(
                                child: Icon(
                              Icons.add,
                              color: Color(Konstants.orange),
                              size: 20,
                              weight: 400,
                            )),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '\$ 50',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                const Divider(),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text('One pack contains',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(Konstants.orange),
                          decorationThickness: 2,
                          shadows: [
                            const Shadow(
                                color: Colors.black, offset: Offset(0, -10))
                          ])),
                ),
                const SizedBox(height: 8),        
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(height: 12),  
                const Divider(),
                const SizedBox(height: 8),  
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    'If you are looking for a new fruit salad to eat today, \n quinoa is the perfect brunch for you.',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const SizedBox(height: 16),  
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        weight: 300,
                        color: Color(Konstants.orange),
                        size: 32,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Get.toNamed('order_list');
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 36.0),
                            child: Text('Add to basket',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.white)),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
