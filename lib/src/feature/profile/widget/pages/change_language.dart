import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/extensions/generic_map.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/assets.gen.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/core/widgets/row_spacer.dart';
import 'package:my_project/src/feature/app/widget/settings_scope.dart';
import 'package:my_project/src/feature/profile/enum/app_language.dart';

@RoutePage()
class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({
    super.key,
  });

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: CupertinoButton(
          onPressed: () {
            context.router.pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        title: Text(
          context.localized.appLanguage,
          style: context.theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          /// [BODY]
          Column(
            children: [
              const ColumnSpacer(1.7),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ...AppLanguage.values.mapToList(
                    (e) => _LanguageItemWidget(
                      e: e,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _LanguageItemWidget extends StatelessWidget {
  // final ChangeLanguageVm languageVm;
  final AppLanguage e;
  const _LanguageItemWidget({
    Key? key,
    // required this.languageVm,
    required this.e,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // languageVm.setLocale(e.name);
        SettingsScope.setLocale(context, e);
      },
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                e.localeCode == 'ru'
                    ? Assets.images.svg.flagRu.svg()
                    : Assets.images.svg.flagKz.svg(),
                const RowSpacer(1.0),
                Text(
                  e.title,
                  style: context.theme.textTheme.bodyLarge,
                )
              ],
            ),
            if (context.currentLocale == e)
              // SvgPicture.asset(AppSvgImages.icCheckFilled)
              const Icon(
                CupertinoIcons.check_mark_circled,
                color: AppColors.mbBrand,
              )
            else
              const SizedBox(),
          ],
        ),
      ),
    );
  }
}
