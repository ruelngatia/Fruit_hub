
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeadingBtn extends StatelessWidget {
  const LeadingBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: 90,
          height: 30,
          child: GestureDetector(
            child:  Container(
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 18,
                    weight: 700,
                  ),
                  Text('Go back', style: Theme.of(context).textTheme.bodyMedium,)
                ],
              ),
            ),
            onTap: () {
              Get.back();
            },
          ),
        ),
    );
  }
}