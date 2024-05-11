import 'package:flutter/material.dart';
import 'package:fruit_hub/presentation/widgets/combo_card.dart';
import 'package:fruit_hub/presentation/widgets/cutom_appbar.dart';
import 'package:fruit_hub/presentation/widgets/filter_card.dart';
import 'package:fruit_hub/presentation/widgets/filter_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: 'Hello name,',style:Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400) ),
                  TextSpan(text: ' What fruit \n salad combo do you want today?', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                  ),
                ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: 'Search for fruit combos'),
                  )),
                  IconButton(
                      onPressed: () async{
                      }, 
                      icon: const Icon(Icons.tune_rounded)),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Recomended Combo',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        blurRadius: 28.0,
                        spreadRadius: 0.0,
                        offset: const Offset(
                          8.0,
                          15.0,
                        ),
                      )
                    ]),
                height: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: RecomendedCard(),
                    );
                  },
                ),
              ),
              FiltersMenu(),
              SizedBox(
                height: 190,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FilterCard(index: index);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

