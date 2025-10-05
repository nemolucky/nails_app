import 'package:flutter/material.dart';
import 'package:nails_app/app/theme/widgets/auth_toggle_style.dart';

class AuthToggle extends StatefulWidget {
  const AuthToggle({
    super.key,
    required this.isLogin,
    required this.onTapLogin,
    required this.onTapRegister,
    required this.authToggleStyle,
  });

  final bool isLogin;
  final VoidCallback? onTapLogin;
  final VoidCallback? onTapRegister;
  final AuthToggleStyle authToggleStyle;

  @override
  State<AuthToggle> createState() => _AuthToggleState();
}

class _AuthToggleState extends State<AuthToggle> {
  @override
  Widget build(BuildContext context) {
    //TODO: Вынести параметры в стиль
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.125,
      ),
      decoration: BoxDecoration(
        color: widget.authToggleStyle.backgroundColor,
        borderRadius: BorderRadius.circular(24),
        border: widget.authToggleStyle.border,
      ),
      constraints: BoxConstraints(
        maxWidth: 450
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: widget.isLogin
                    ? widget.authToggleStyle.enabledColor
                    : Colors.transparent,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(22),
                  bottomLeft: Radius.circular(22),
                ),
              ),
              child: TextButton(
                onPressed: widget.onTapLogin,
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: Text(
                  "Вход",
                  style: widget.isLogin
                      ? widget.authToggleStyle.enabledText
                      : widget.authToggleStyle.disabledText,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: !widget.isLogin
                    ? widget.authToggleStyle.enabledColor
                    : Colors.transparent,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
              ),
              child: TextButton(
                onPressed: widget.onTapRegister,
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: Text(
                  "Регистрация",
                  style: !widget.isLogin
                      ? widget.authToggleStyle.enabledText
                      : widget.authToggleStyle.disabledText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
