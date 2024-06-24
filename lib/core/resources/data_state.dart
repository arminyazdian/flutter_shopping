abstract class DataState<T> {
  const DataState(T? data, String? error);
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data, null);
}

class DataFail<T> extends DataState<T> {
  const DataFail(String? error) : super(null, error);
}
