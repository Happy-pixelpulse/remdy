import 'package:flutter/material.dart';

class GroupRadioButton extends StatefulWidget {
  const GroupRadioButton({
    super.key,
    required this.label,
    required this.padding,
    required this.onChanged,
    this.color = Colors.blue,
    this.direction = Axis.horizontal,
    this.radioRadius = 14.0,
    this.spaceBetween = 5.0,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final Color color;
  final Axis direction;
  final List<Widget> label;
  final EdgeInsets padding;
  final Function(int) onChanged;
  final double radioRadius;
  final double spaceBetween;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  _GroupRadioButtonState createState() => _GroupRadioButtonState();
}

class _GroupRadioButtonState extends State<GroupRadioButton> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: widget.direction,
      children: [
        ...[
          for (int i = 0; i < widget.label.length; i++)
            LabeledRadio(
              selectedIndex: selectedIndex,
              color: widget.color,
              onChanged: (value) {
                setState(() {
                  selectedIndex = value;
                  widget.onChanged(value);
                  // print(value);
                });
              },
              index: i,
              label: widget.label[i],
              crossAxisAlignment: widget.crossAxisAlignment,
              mainAxisAlignment: widget.mainAxisAlignment,
              radioRadius: widget.radioRadius,
              spaceBetween: widget.spaceBetween,
              padding: widget.padding,
            )
        ]
      ],
    );
  }
}

class LabeledRadio extends StatelessWidget {
  const LabeledRadio({
    super.key,
    required this.label,
    required this.index,
    required this.color,
    required this.onChanged,
    required this.radioRadius,
    required this.padding,
    required this.spaceBetween,
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
    required this.selectedIndex,
  });

  final Color color;
  final int selectedIndex;
  final Widget label;
  final int index;
  final EdgeInsets padding;
  final Function(int) onChanged;
  final double radioRadius;
  final double spaceBetween;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: InkWell(
        onTap: () {
          onChanged(index);
        },
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  //color: Const.mainColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: color, width: 2),
                ),
                padding: const EdgeInsets.all(2),
                child: selectedIndex == index
                    ? Container(
                        height: radioRadius,
                        width: radioRadius,
                        decoration: BoxDecoration(
                          color: color,
                          shape: BoxShape.circle,
                        ),
                      )
                    : SizedBox(
                        height: radioRadius,
                        width: radioRadius,
                      ),
              ),
              SizedBox(
                width: spaceBetween,
              ),
              label,
            ],
          ),
        ),
      ),
    );
  }
}
