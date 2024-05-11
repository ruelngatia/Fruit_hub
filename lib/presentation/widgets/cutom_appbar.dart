import 'package:flutter/material.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          leading: const Align(
            alignment: Alignment.bottomLeft,
            child: Icon(
              Icons.short_text,
              size: 42,
             ),
          ),
          actions: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                    onPressed: () {
                      Get.toNamed('/order_list');
                    },
                    icon: Icon(
                      Icons.shopping_bag_sharp,
                      color: Color(Konstants.orange),
                    )),
                const Text(
                  'My basket',
                  style: TextStyle(
                    fontSize: 12,
                    height: .01
                  ),  
                )
              ],
            ),
          ],
        ),
    );
  }
  

}