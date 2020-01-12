import 'package:flutter_test/flutter_test.dart';
import 'package:git_as_api/app/modules/home/repositories/home_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';


class MockClient extends Mock implements Dio {}

void main() {
  HomeRepository repository;
  MockClient client;

  setUp(() {
    repository = HomeRepository(Dio());
    client = MockClient();
  });

  group('HomeRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<HomeRepository>());
    });
   
  });
}
