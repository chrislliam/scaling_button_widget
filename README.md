<!--
This README describes the package. If you publish this package to pub.dev,
the contents of this README will appear on the landing page for your package.

For information about how to write a good README for packages, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Scaling Button Widget

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

- Creates a button that scales down slightly when pressed
- Returns to its original size when released

## Getting started

To start using this package, add `scaling_button_widget` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  scaling_button_widget: ^0.0.1
```

  ```dart
import 'package:scaling_button_widget/scaling_button_widget.dart';

ScalingButton(
  onTap: () {
    // Add your onTap functionality here
  },
  child: Container(
    width: 100,
    height: 50,
    color: Colors.blue,
    child: Center(
      child: Text(
        'Press Me',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
)

```
