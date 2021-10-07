import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class ScrollToHide extends StatefulWidget {

  final Widget child;
  final ScrollController controller;
  final Duration duration;



  ScrollToHide({
    Key key,
    this.child,
    this.controller,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key : key);


  @override
  State<StatefulWidget> createState() {
    return _ScrollToHide();
  }
  
}

class _ScrollToHide extends State<ScrollToHide> {

  bool isVisible = false;
  static const double kAutoHide = 200.0;

  @override
    void initState() {
      super.initState();
      
      widget.controller.addListener(listen);
    }
    

    @override
      void dispose() {
        super.dispose();

        widget.controller.removeListener(listen);
      }

  void show() {
     if (!isVisible) setState(() => isVisible = true);
  }

    void hide() {
     if (isVisible) setState(() => isVisible = false);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: widget.duration, height: isVisible ? 0.0 : kAutoHide , child: widget.child);
  }


  void listen() {
    final direction = widget.controller.position.userScrollDirection;
print(direction);
    if (direction == ScrollDirection.forward){
hide();
    }else{
            show();

    }


  }
}