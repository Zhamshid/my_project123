import 'package:flutter/widgets.dart';
import 'package:my_project/src/core/extensions/generic_map.dart';
import 'package:my_project/src/core/resources/app_colors.dart';

@immutable
class DotsRowWidget extends StatelessWidget {
  const DotsRowWidget({
    required this.list,
    required this.current,
    super.key,
  });

  final List<dynamic> list;
  final int current;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: list.mapIndexedToList(
          (e, i) => Container(
            width: current == i ? 24.0 : 6.0,
            height: 6,
            margin: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: current == i ? AppColors.mbBrand : AppColors.lightDivider,
            ),
          ),
        ),
      );
}
