import 'package:flutter/material.dart';
import 'package:nails_app/app/routes/app_routes.dart';
import 'package:nails_app/app/theme/theme.dart';
import 'package:nails_app/presentation/screens/auth/widgets/widgets.dart';
import 'package:nails_app/presentation/widgets/widgets.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late bool isLogin;
  late TextEditingController nameTextController;
  late TextEditingController emailTextController;
  late TextEditingController passwordTextController;

  //TODO: Ручки для авторизации и регистрации пользователя

  @override
  void initState() {
    super.initState();
    isLogin = true;
    nameTextController = TextEditingController();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    nameTextController.dispose();
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  void _toggleToLogin() {
    setState(() {
      isLogin = true;
      _clearControllers();
    });
  }

  void _toggleToRegister() {
    setState(() {
      isLogin = false;
      _clearControllers();
    });
  }

  void _clearControllers() {
    nameTextController.clear();
    emailTextController.clear();
    passwordTextController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeData>()!;

    //TODO: Подумать над sticky отрисовки виджетов

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: theme.scaffoldBackgroundColor),
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
                      Spacer(flex: 1),
                      ImageLogo(
                        horizontalPadding:
                            MediaQuery.of(context).size.width * 0.3,
                      ),
                      Spacer(flex: 1),
                      AuthToggle(
                        isLogin: isLogin,
                        onTapLogin: isLogin ? null : _toggleToLogin,
                        onTapRegister: isLogin ? _toggleToRegister : null,
                        authToggleStyle: theme.authToggleStyle,
                      ),
                      Spacer(flex: 1),
                      if (isLogin)
                        ..._buildLoginForm(
                          theme,
                          emailTextController,
                          passwordTextController,
                        ),
                      if (!isLogin)
                        ..._buildRegisterForm(
                          theme,
                          nameTextController,
                          emailTextController,
                          passwordTextController,
                        ),
                      Spacer(flex: 2),
                      CustomElevatedButton(
                        //TODO: Доделать кнопку
                        // Сделать валидацию полей ввода
                        // Добавить бизнес логику
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.main,
                          );
                        },
                        text: isLogin ? "Войти" : "Зарегистрироваться",
                        elevatedButtonStyle: theme.elevatedButtonStyle,
                        horizontalPadding:
                            MediaQuery.of(context).size.width * 0.125,
                      ),

                      Spacer(flex: 3),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildLoginForm(
    AppThemeData theme,
    TextEditingController emailTextController,
    TextEditingController passwordTextController,
  ) {
    return [
      CustomTextField(
        hintText: "Введите электронную почту",
        textFieldStyle: theme.textFieldStyle,
        textEditingController: emailTextController,
        horizontalPadding: MediaQuery.of(context).size.width * 0.125,
      ),
      Spacer(flex: 1),
      CustomTextField(
        hintText: "Введите пароль",
        textFieldStyle: theme.textFieldStyle,
        textEditingController: passwordTextController,
        horizontalPadding: MediaQuery.of(context).size.width * 0.125,
      ),
    ];
  }

  List<Widget> _buildRegisterForm(
    AppThemeData theme,
    TextEditingController nameTextController,
    TextEditingController emailTextController,
    TextEditingController passwordTextController,
  ) {
    return [
      CustomTextField(
        hintText: "Введите имя пользователя",
        textFieldStyle: theme.textFieldStyle,
        textEditingController: nameTextController,
        horizontalPadding: MediaQuery.of(context).size.width * 0.125,
      ),
      Spacer(flex: 1),
      CustomTextField(
        hintText: "Введите электронную почту",
        textFieldStyle: theme.textFieldStyle,
        textEditingController: emailTextController,
        horizontalPadding: MediaQuery.of(context).size.width * 0.125,
      ),
      Spacer(flex: 1),
      CustomTextField(
        hintText: "Введите пароль",
        textFieldStyle: theme.textFieldStyle,
        textEditingController: passwordTextController,
        horizontalPadding: MediaQuery.of(context).size.width * 0.125,
      ),
    ];
  }
}
