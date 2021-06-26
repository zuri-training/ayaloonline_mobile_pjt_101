import 'dart:async';

import 'package:ayalo_mobile_pjt101/Custom_widgets/input_form.dart';
import 'package:flutter/material.dart';

class _DropdownState {
  StreamController<String> _controller = new StreamController<String>();

  Stream<String> get stream => _controller.stream;
  StreamSink<String> get streamSink => _controller.sink;

  void dispose() {
    _controller.close();
  }
}

class DropDown extends StatefulWidget {
  const DropDown(this.values) : super();
  final List<String> values;
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  late String dropdownValue;
  late _DropdownState _dropDownState;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.values[0];
    _dropDownState = _DropdownState();
    _dropDownState.streamSink.add(dropdownValue);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: _dropDownState.stream,
      builder: (context, snapshot) {
        Widget _toggle() {
          if (snapshot.data == widget.values[0])
            return inputForm(
                'Bank Verification Number (BVN)', 'enter your BVN', null);
          else if (snapshot.data == widget.values[1])
            return inputForm(
                'National Identification Number (NIN)', 'enter your NIN', null);
          return RefreshProgressIndicator();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Method of Verification'),
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                elevation: 0,
                value: dropdownValue,
                isExpanded: true,
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                    _dropDownState.streamSink.add(dropdownValue);
                  });
                },
                items: [
                  DropdownMenuItem(
                      child: Text(widget.values[0]), value: widget.values[0]),
                  DropdownMenuItem(
                      child: Text(widget.values[1]), value: widget.values[1])
                ],
              ),
            ),
            SizedBox(height: 32),
            _toggle(),
          ],
        );
      },
    );
  }
}
