import 'package:flutter/material.dart';
import 'package:fruit_hub/utils/konstants.dart';
import 'package:get/get.dart';

class FiltersMenu extends StatelessWidget {
  FiltersMenu({super.key});
  final SelectedController c = Get.put(SelectedController());
  final List<String> menuItems = ['Hottest', 'Popular', 'New Combo', 'Top'];

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SelectedController(),
      builder: (controller) => SizedBox(
        height: 100,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return Center(
              child: GestureDetector(
                  onTap: () {
                    controller.setSelected(RxInt(index));
                  },
                  child: menuItem(
                      context, menuItems[index], RxInt(index) == controller.selected)),
            );
          },
        ),
      ),
    );
  }

  Widget menuItem(BuildContext context, String title, bool selected) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: selected
                ? Theme.of(context).textTheme.headlineMedium
                : Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Color(Konstants.fontgrey)),
          ),
          Visibility(
              visible: selected,
              child: SizedBox(
                  width: 40,
                  child: Divider(
                      height: 3, thickness: 3, color: Color(Konstants.orange))))
        ],
      ),
    );
  }
}

class SelectedController extends GetxController {
  var selected = 0.obs;
  setSelected(value) {
    selected = value;
    update();
  }
}
