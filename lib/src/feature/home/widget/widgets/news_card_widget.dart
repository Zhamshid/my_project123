import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/text_styles.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/core/widgets/row_spacer.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String contry;
  final String author;
  final String authorImagePath;
  const NewsCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.contry,
    required this.author,
    required this.authorImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Фото новости
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  image,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              RowSpacer(1.5),

              /// Информация о новости
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          contry,
                          style: TextStyles.regular14.copyWith(
                            color: AppColors.grayScale,
                          ),
                        ),
                        ColumnSpacer(0.4),
                        Text(
                          title,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.body16,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          authorImagePath,
                          fit: BoxFit.cover,
                          width: 30,
                        ),
                        RowSpacer(0.4),
                        Text(
                          author,
                          style: TextStyles.bold14.copyWith(
                            color: AppColors.grayScale,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
