import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
class BaseView<T extends ChangeNotifier> extends StatefulWidget {
  final ValueWidgetBuilder<T>? builder;
  final T? controller;
  final Widget? child;
  final Function(T controller)? onModelReady;
  final Function(T controller)? onModelDispose;

  BaseView({
    Key? key,
    this.controller,
    this.builder,
    this.child,
    this.onModelReady,
    this.onModelDispose
  }) : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();

}

class _BaseViewState<T extends ChangeNotifier> extends State<BaseView<T>> {
  // We want to store the instance of the controllers in the state
  // that way it stays constant through rebuilds
  late T controller;

  @override
  void initState() {
    // assign the controllers once when state is initialised
    controller = widget.controller!;
    widget.onModelReady?.call(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller = widget.controller!;
    widget.onModelDispose?.call(controller);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: controller,
      child: Consumer<T>(
        builder: widget.builder!,
        // child: widget.child,
      ),
    );
  }
}
