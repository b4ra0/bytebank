import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  final String message;
  final TextStyle estilo;

  Progress({
    this.message = 'Loading',
    this.estilo
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              message,
              style: estilo,
            ),
          ),
        ],
      ),
    );
  }
}
class ProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Processing'),
      ),
      body: Progress(
        message: 'Sending...',
      ),
    );
  }
}