// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CopyableText extends StatelessWidget {

//   final String text;

//   final TextStyle style;
//   final TextAlign textAlign;

//   const CopyableText(
//     this.text, {
//     Key? key,
//     this.style = const TextStyle(),
//     this.textAlign = TextAlign.left,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     return GestureDetector(
//       onLongPress: () {
//         Clipboard.setData(ClipboardData(text: text));
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Copied to clipboard'),
//             duration: const Duration(seconds: 2),
//           ),
//         );
//       },
//       child: SelectableText(
//         text,
//         textAlign: textAlign,
//         style: style,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyableText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final TextAlign textAlign;

  const CopyableText(
    this.text, {
    required Key key,
    this.style = const TextStyle(),
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  CopyableTextState createState() => CopyableTextState();
}

class CopyableTextState extends State<CopyableText> {
  late String _text;

  @override
  void initState() {
    super.initState();
    _text = widget.text;
  }

  void setText(String text) {
    setState(() {
      _text = text;
    });
  }

  String getText() {
    return _text;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: _text));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Copied to clipboard'),
            duration: Duration(milliseconds: 1),
          ),
        );
      },
      child: SelectableText(
        _text,
        textAlign: widget.textAlign,
        style: widget.style,
      ),
    );
  }
}
