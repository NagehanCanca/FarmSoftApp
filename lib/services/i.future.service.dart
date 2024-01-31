
abstract class IFutureService {
  Future<List<T>> get<T>(String path);
  Future<List<T>> post<T>(String path);
}