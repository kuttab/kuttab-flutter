import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';

class FullColorButton extends StatelessWidget {
  final Function() _onPressed;
  final String _text;
  const FullColorButton(
      {Key? key, required Function() onPressed, required String text})
      : _onPressed = onPressed,
        _text = text,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(PRIMARY_COLOR),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: const BorderSide(color: PRIMARY_COLOR))),
        ),
        onPressed: _onPressed,
        child: AppText(
          text: _text,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}

class WhiteButtton extends StatelessWidget {
  final Function() _onPressed;
  final String _text;
  final bool? _bordered;
  const WhiteButtton(
      {Key? key,
      required Function() onPressed,
      required String text,
      bool? bordered})
      : _onPressed = onPressed,
        _text = text,
        _bordered = bordered,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: (_bordered == false)
                  ? (const BorderSide(color: Colors.white))
                  : (const BorderSide(color: PRIMARY_COLOR)),
            ),
          ),
        ),
        onPressed: _onPressed,
        child: AppText(
          text: _text,
          color: PRIMARY_COLOR,
          fontWeight: FontWeight.w900,
          fontSize: 16,
        ),
      ),
    );
  }
}
