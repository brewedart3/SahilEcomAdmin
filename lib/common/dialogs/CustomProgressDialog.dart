import 'package:flutter/material.dart';

class CustomProgressDialog extends StatefulWidget {
  @override
  _CustomProgressDialogState createState() => _CustomProgressDialogState();
}

class _CustomProgressDialogState extends State<CustomProgressDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16.0),
            Text('Loading...'),
          ],
        ),
      ),
    );
  }
}
