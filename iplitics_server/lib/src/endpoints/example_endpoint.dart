import 'package:iplitics_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ExampleEndpoint extends Endpoint {
  Future<String> hello(Session session, String name) async {
    return 'Hello $name';
  }

  Future<Article> getArticle(Session session, int id) async {
    return Article(
      title: 'IPL Prediction',
      content: 'test server',
      publishedOn: DateTime.now(),
      isPrime: true,
      authorName: 'Group 12',
    );
  }
}
