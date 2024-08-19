import 'package:flutter/material.dart';

class LoadingImage extends StatefulWidget {
  @override
  _LoadingImageState createState() => _LoadingImageState();
}

class _LoadingImageState extends State<LoadingImage> {
  double _imageSize = 100.0; // Initial size of the image
  double _minSize = 95.0; // Smaller size
  double _maxSize = 105.0; // Larger size
  Duration _duration = const Duration(milliseconds: 400); // Animation duration

  @override
  void initState() {
    super.initState();
    _startLoadingAnimation();
  }

  void _startLoadingAnimation() {
    Future.delayed(Duration.zero, () {
      _animateImageSize(_maxSize);
    });
  }

  void _animateImageSize(double targetSize) {
    if(mounted
    ){
      setState(() {
        _imageSize = targetSize;
      });
    }

    Future.delayed(_duration, () {
      // Switch to the opposite size after the animation duration
      double nextSize = (_imageSize == _maxSize) ? _minSize : _maxSize;
      _animateImageSize(nextSize);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: _duration,
        width: _imageSize,
        height: _imageSize,
        child: Image.asset('assets/logo.png'), // Replace with your image path
      ),
    );
  }
}