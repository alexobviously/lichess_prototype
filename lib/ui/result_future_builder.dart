import 'package:flutter/material.dart';
import 'package:lichess_prototype/model/model.dart';

class ResultFutureBuilder<T> extends StatelessWidget {
  final Future<Result<T>> future;
  final Widget Function(T result) resultBuilder;
  final Widget loading;
  final Widget Function(String e)? errorBuilder;
  const ResultFutureBuilder({
    super.key,
    required this.future,
    required this.resultBuilder,
    this.loading = const Center(child: CircularProgressIndicator()),
    this.errorBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Result<T>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return errorBuilder?.call(snapshot.error!.toString()) ?? Container();
        }
        if (snapshot.hasData) {
          if (snapshot.data!.ok) {
            return resultBuilder(snapshot.data!.object!);
          }
          return errorBuilder?.call(snapshot.data!.error!) ?? Container();
        }
        return loading;
      },
    );
  }
}
