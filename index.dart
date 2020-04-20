import 'dart:io';

Future main() async {
  // #docregion bind
  var server = await HttpServer.bind(
    '192.168.1.4',
    4040,
  );
  // #enddocregion bind
  print('Listening on localhost:${server.port}');

  // #docregion listen
  await for (HttpRequest request in server) {
    request.response.write('Hello, world!');
    await request.response.close();
  }
  // #enddocregion listen
}
