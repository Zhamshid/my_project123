import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_project/src/core/extensions/context.dart';
import 'package:my_project/src/core/resources/app_colors.dart';
import 'package:my_project/src/core/resources/text_styles.dart';
import 'package:my_project/src/core/widgets/column_spacer.dart';
import 'package:my_project/src/core/widgets/custom_button.dart';
import 'package:my_project/src/core/widgets/custom_text_field.dart';
import 'package:my_project/src/core/widgets/row_spacer.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _surnameController = TextEditingController();
  final _nameController = TextEditingController();

  bool _hidePassword = true;

  void _toggleIcon() => setState(() => _hidePassword = !_hidePassword);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.localized.register,
                textAlign: TextAlign.center,
                style: TextStyles.h2Bold.copyWith(
                  color: AppColors.mbBrand,
                ),
              ),
              ColumnSpacer(2),
              CustomTextField(
                controller: _nameController,
                decoration: InputDecoration(
                  label: Text(context.localized.enterName),
                ),
              ),
              ColumnSpacer(1.6),
              CustomTextField(
                controller: _surnameController,
                decoration: InputDecoration(
                  label: Text(context.localized.enterSurname),
                ),
              ),
              ColumnSpacer(1.6),
              CustomTextField(
                controller: _phoneController,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 4, right: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('+7', style: TextStyles.body16),
                        const RowSpacer(1.6),
                        Container(
                          height: 20,
                          width: 1,
                          color: AppColors.lightDivider,
                        ),
                      ],
                    ),
                  ),
                  label: Text(
                    context.localized.phoneNumber,
                  ),
                ),
              ),
              ColumnSpacer(1.6),
              CustomTextField(
                obscureText: _hidePassword,
                controller: _passwordController,
                decoration: InputDecoration(
                  label: Text(context.localized.enterPassword),
                  suffixIcon: IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    splashColor: Colors.transparent,
                    enableFeedback: false,
                    onPressed: _toggleIcon,
                    icon: Icon(
                      _hidePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              ColumnSpacer(.8),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  child: Text(
                    context.localized.login,
                  ),
                ),
              ),
              ColumnSpacer(4),
              CustomButton(
                onPressed: () {},
                child: Text(
                  context.localized.register,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
