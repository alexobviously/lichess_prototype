/// A generic structure for results to be returned in.
class Result<T> {
  final T? object;
  final String? error;

  bool get ok => error == null;
  bool get hasObject => object != null;

  const Result({this.object, this.error})
      : assert(!(error == null && object == null));

  factory Result.error(String error) => Result(error: error);
  factory Result.ok(T object) => Result(object: object);

  @override
  String toString() {
    String str = ok ? 'ok, $object' : 'error, $error';
    return 'Result($str)';
  }
}
