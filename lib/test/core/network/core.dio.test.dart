import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../core/constants/enum/http.request.enum.dart';
import '../../../core/init/network/ICoreDio.dart';
import 'core.dio.mock.dart';
import 'dio.mock.model.dart';

main() {
  late ICoreDioFullNulSafetyFull service;
  setUp(() {
    service = CoreDioMock(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));
  });
  test('CoreDio List', () async {
    final data = await service.send<List<PostModel>, PostModel>('/posts', type: HttpTypes.GET, parseModel: PostModel());

    expect(data.data, isList);
  });

  test('CoreDio List No Network', () async {
    final data = await service.fetchNoNetwork<List<PostModel>, PostModel>('/posts', type: HttpTypes.GET, parseModel: PostModel());

    expect(data.data, isList);
  });

  test('CoreDio Object', () async {
    final data = await service.send<List<PostModel>, PostModel>('/posts', type: HttpTypes.GET, parseModel: PostModel());

    expect(data.data, isList);
  });

  test('CoreDio Primitive', () async {
    final data = await service.send<List<PostModel>, PostModel>('/posts', type: HttpTypes.GET, parseModel: PostModel());

    expect(data.data, isList);
  });

  test('CoreDio Error', () async {
    final data = await service.fetchNoNetwork<List<PostModel>, PostModel>('/posts', type: HttpTypes.GET, parseModel: PostModel());

    expect(data.data, isList);
  });
}