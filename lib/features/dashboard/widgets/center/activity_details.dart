import 'package:flutter/material.dart';

import 'iconCards.dart';

class ActivitiesDetails extends StatelessWidget {
  const ActivitiesDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 15,
            mainAxisSpacing: 20,
            mainAxisExtent: 120,
            childAspectRatio: 2),
        itemBuilder: (_, index) => Iconcard(
              index: index,
            ));
  }
}
