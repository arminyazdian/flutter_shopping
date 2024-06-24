abstract class CallableUsecase<T, P> {
  Future<T> call(P param);
}
