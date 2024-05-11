import 'package:flutter/material.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:get/get.dart';

class RecomendedCard extends StatelessWidget {
  const RecomendedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed('add_to_basket');
      },
      child: Container(
        width: 180,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child:
                    Icon(Icons.favorite_border, color: Color(Konstants.orange)),
              ),
              Center(
                child:
                    Image.asset('assets/images/salad.png', height: 80, width: 80),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Honey Lime combo',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$ 15",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Color(Konstants.orange))),
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Theme(
                      data: ThemeData(
                        elevatedButtonTheme: ElevatedButtonThemeData(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            backgroundColor: MaterialStateProperty.all(Color(Konstants.lightOrange)),
                            shape: MaterialStateProperty.all(const CircleBorder())
                            )
                          )
                      ),
                      child: ElevatedButton(
                        onPressed: (){
                          Get.toNamed('add_to_basket');           
                        },
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Color(Konstants.orange),
                            size: 17,
                            weight: 100,
                            )
                          ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
