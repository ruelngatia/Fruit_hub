import 'package:flutter/material.dart';
import 'package:fruit_hub/utils/konstants.dart';

class FilterCard extends StatelessWidget {
  
  FilterCard({
    super.key, required this.index,
  });

  final List<int> colors = [Konstants.faintOrange,Konstants.luminousOrange,Konstants.luminousGrey];
  final int index;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Card(
        elevation: 0,
        color: Color(colors[index%colors.length]),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.favorite_border,
                    color: Color(Konstants.orange)),
              ),
              Center(
                child: Image.asset('assets/images/salad.png', height: 64,
                width: 64,)),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Honey Lime combo',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$ 15",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Color(Konstants.fABOrange))),
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
