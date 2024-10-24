# Dynamic Screen Dime 

**Dime** is a Flutter utility package designed to provide responsive dimensions and styling for your Flutter applications. It allows you to define dimensions based on screen size and easily access common text styles throughout your app.

## Features

- Responsive dimension calculations based on screen width and height.
- Easy-to-use text styles for consistent typography.
- Logging utilities for debugging.
## How to use

# Dime Utility - Custom Print and Trace Methods

This documentation provides an overview of how to use the `print` and `trace` methods from the `Dime` utility class in your Flutter project.

## Methods Overview

### `Dime.print(String message)`

- Prints the message to the console in **yellow**.
- Use this method when you want to format your debug messages with a color.

### `Dime.trace(String message)`

- Prints the message to the console along with the **stack trace** information.
- Use this method for logging, especially when you want to know where a certain message is coming from in your code.

## How to Use

### Example 1: Using `Dime.print`

In your Dart code, call `Dime.print` to print a message in yellow:

```dart
void someFunction() {
  Dime.print('This is a custom print message!');
}

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
    Dime.init(
    MediaQuery.of(context).size.width,
    MediaQuery.of(context).size.height);
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
