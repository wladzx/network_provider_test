import 'package:flutter/cupertino.dart';
import 'package:network_provider_test/core/view_model/base_view_model.dart';
import 'package:network_provider_test/di/dependency_injection.dart';
import 'package:provider/provider.dart';



class BaseView<T extends BaseViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child) builder;
  final Function(T)? onModelReady;
  final Function(dynamic error, T viewModel)? onError;

  const BaseView({
    Key? key,
    required this.builder,
    required this.onModelReady,
    this.onError,
  }) : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  T model = getIt<T>();

  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady!(model);
    }
    model.errorStream.listen((event) {
      if (widget.onError != null) {
        widget.onError!(event, model);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => model,
      child: Consumer<T>(builder: widget.builder),
    );
  }
}
