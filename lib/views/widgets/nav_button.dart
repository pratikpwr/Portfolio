import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';

class NavButton extends StatefulWidget {
  final String text;
  final IconData icon;
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      height: 54,
      width: isExpanded ? 120 : 54,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(50),
        //     shape: BoxShape.circle
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
                  Icon(
                    widget.icon,
                    size: 22,
                    color: iconColor,
                  ),
                  Text(
                    widget.text,
                    style: TextStyle(color: iconColor, fontSize: 18),
                  )
                ],
              )
            : Icon(
                widget.icon,
                size: 22,
                color: iconColor,
              ),
      ),
    );
  }
}
