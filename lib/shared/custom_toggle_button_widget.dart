import 'package:flutter/material.dart';

class CustomToggleButtonWidget extends StatefulWidget {
  final bool isOn;
  final Function(bool) onChanged;

  const CustomToggleButtonWidget({
    Key? key,
    required this.isOn,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomToggleButtonWidgetState createState() => _CustomToggleButtonWidgetState();
}

class _CustomToggleButtonWidgetState extends State<CustomToggleButtonWidget> {
  bool _isOn = false;

  @override
  void initState() {
    super.initState();
    _isOn = widget.isOn;
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isOn,
      onChanged: (value) {
        setState(() {
          _isOn = value;
        });
        widget.onChanged(value);
      },
      activeTrackColor: Colors.green,
      activeColor: Colors.green,
    );
  }
}