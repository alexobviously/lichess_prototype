List<T> coerceList<T>(List<dynamic> list) => list.map((e) => e as T).toList();
List<Map<String, dynamic>> coerceListMSD(List<dynamic> list) =>
    coerceList<Map<String, dynamic>>(list);
List<T> mapList<T>(List<dynamic> list, T Function(dynamic) m) =>
    list.map((e) => m(e)).toList();
Map<String, T> stringifyMapKeys<X, T>(Map<X, T> m) =>
    m.map<String, T>((k, v) => MapEntry(k.toString(), v));
Map<int, T> intifyMapKeys<T>(Map<String, T> m) =>
    m.map<int, T>((k, v) => MapEntry(int.parse(k), v));
