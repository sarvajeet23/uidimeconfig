# Dime Package

**Dime** is a Flutter utility package designed to provide responsive dimensions and styling for your Flutter applications. It allows you to define dimensions based on screen size and easily access common text styles throughout your app.

## Features

- Responsive dimension calculations based on screen width and height.
- Easy-to-use text styles for consistent typography.
- Logging utilities for debugging.
## How to use


how to use  file:

```yaml
import 'package:flutter/material.dart';
import 'package:uidimeconfig/uidimeconfig.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Dime.init(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('uidimeconfig Package Example'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(Dime.padding),
          child: Text(
            'Responsive Text',
            style: TextStyles.heading1,
          ),
        ),
      ),
    );
  }
}
