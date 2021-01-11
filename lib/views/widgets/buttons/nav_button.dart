import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';

class NavButton extends StatefulWidget {
  final String text;
  final String icon;
  final Function onTap;

  NavButton({@required this.text, @required this.icon, @required this.onTap});

  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool isExpanded = false;
  Color buttonColor = Palette.whiteSmoke;
  Color iconColor = Palette.titleColor;
  double buttonWidth = 54;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: InkWell(
          onTap: widget.onTap,
          highlightColor: Colors.white,
          splashColor: Colors.white,
          onHover: (isHovered) {
            if (isHovered) {
              setState(() {
                buttonColor = Palette.primaryColor;
                iconColor = Colors.white;
                isExpanded = true;
              });
            } else {
              setState(() {
                buttonColor = Palette.whiteSmoke;
                iconColor = Palette.titleColor;
                isExpanded = false;
              });
            }
          },
          child: isExpanded
              ? Row(
                  children: [
                    Image.asset(
                      widget.icon,
                      height: 22,
                      width: 22,
                      color: iconColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.text,
                      style: TextStyle(color: iconColor, fontSize: 17),
                    )
                  ],
                )
              : Image.asset(
                  widget.icon,
                  height: 22,
                  width: 22,
                  color: iconColor,
                ),
        ),
      ),
    );
  }
}
