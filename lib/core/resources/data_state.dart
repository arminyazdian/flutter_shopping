abstract class DataState<T> {
  final T? data;
  final String? error;
  const DataState(this.data, this.error);
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data, null);
}

class DataFail<T> extends DataState<T> {
  const DataFail(String? error) : super(null, error);
}
