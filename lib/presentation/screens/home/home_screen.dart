import 'package:flutter/material.dart';
import 'package:nails_app/app/routes/app_routes.dart';
import 'package:nails_app/app/theme/theme.dart';
import 'package:nails_app/app/theme/widgets/widgets.dart';
import 'package:nails_app/presentation/screens/home/widgets/description_content.dart';
import 'package:nails_app/presentation/screens/home/widgets/header_background.dart';
import 'package:nails_app/presentation/screens/home/widgets/header_content.dart';
import 'package:nails_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: Вынести стили, поменять фон и аватар
    final theme = Theme.of(context).extension<AppThemeData>()!;

    return Container(
      color: theme.scaffoldBackgroundColor,

      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    _buildHeader(),
                    ..._buildContent(MediaQuery.of(context).size.width * 0.1),
                    ..._buildButtons(
                      horizontalPadding:
                          MediaQuery.of(context).size.width * 0.125,
                      buttonStyle: theme.elevatedButtonStyle,
                      firstButtonText: "Записаться",
                      firstButtonOnPressed: () {},
                      secondButtonText: "Работы",
                      secondButtonOnPressed: () =>
                          Navigator.pushNamed(context, AppRoutes.works),
                      thirdButtonText: "Отзывы",
                      thirdButtonOnPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader() {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          HeaderBackground(),
          Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: HeaderContent(
              headerStyle: AppTextStyles.textHeader,
              descriptionStyle: AppTextStyles.textDescription,
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildContent(double horizontalPadding) {
    return [
      DescriptionContent(
        style: AppTextStyles.textDescription,
        horizontalPadding: horizontalPadding,
      ),
    ];
  }

  List<Widget> _buildButtons({
    required double horizontalPadding,
    required CustomElevatedButtonStyle buttonStyle,
    required String firstButtonText,
    required VoidCallback? firstButtonOnPressed,
    required String secondButtonText,
    required VoidCallback? secondButtonOnPressed,
    required String thirdButtonText,
    required VoidCallback? thirdButtonOnPressed,
  }) {
    return [
      const Spacer(flex: 2),
      CustomElevatedButton(
        text: firstButtonText,
        onPressed: firstButtonOnPressed,
        horizontalPadding: horizontalPadding,
        elevatedButtonStyle: buttonStyle,
      ),
      const Spacer(flex: 1),
      CustomElevatedButton(
        text: secondButtonText,
        onPressed: secondButtonOnPressed,
        horizontalPadding: horizontalPadding,
        elevatedButtonStyle: buttonStyle,
      ),
      const Spacer(flex: 1),
      CustomElevatedButton(
        text: thirdButtonText,
        onPressed: thirdButtonOnPressed,
        horizontalPadding: horizontalPadding,
        elevatedButtonStyle: buttonStyle,
      ),
      const Spacer(flex: 2),
    ];
  }
}
