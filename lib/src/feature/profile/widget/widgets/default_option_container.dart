import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_project/src/core/resources/assets.gen.dart';
import 'package:my_project/src/core/widgets/row_spacer.dart';

@immutable
class DefaultOptionContainer extends StatelessWidget {
  final String icon;
  final VoidCallback onPress;
  final Widget child;
  final bool? isVisibleArrow;

  const DefaultOptionContainer({
    required this.icon,
    required this.onPress,
    required this.child,
    this.isVisibleArrow = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoButton(
        onPressed: onPress,
        padding: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
          ),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              icon.startsWith('http')
                  ? SvgPicture.network(
                      icon,
                    )
                  : SvgPicture.asset(
                      icon,
                      width: 30,
                    ),
              const RowSpacer(1.5),
              child,
              const Spacer(),
              Visibility(
                visible: isVisibleArrow ?? true,
                child: Assets.images.svg.icForward.svg(),
              ),
            ],
          ),
        ),
      );
}
