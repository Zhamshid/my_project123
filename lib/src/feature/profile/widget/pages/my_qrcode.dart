import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

@RoutePage()
class MyQRcode extends StatefulWidget {
  const MyQRcode({super.key});

  @override
  State<MyQRcode> createState() => _MyQRcodeState();
}

class _MyQRcodeState extends State<MyQRcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localized.myUniqueCode),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.bgContentDefault,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.all(20),
            child: SfBarcodeGenerator(
              barColor: AppColors.mbBrand,
              value: context.dependencies.sharedPreferences.getString('phone'),
              symbology: QRCode(
                module: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
