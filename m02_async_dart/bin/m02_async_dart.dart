void pretendFileIO() {
  print('File IO: Started');
  print('File IO: File contents => Hello Futures');
  print('File IO: Done');
}

Future<String> pretendHTTPRequest() async {
  print('HTTP Request: Started');
  return Future.delayed(Duration(seconds: 8), () => 'A JSON placeholder');
}

Future<String> pretendDatabaseQuery(String searchTerm) async {
  print('Database query for $searchTerm: Started');
  return Future.delayed(
      Duration(seconds: 2),
      () =>
          'Database query: Resultset => ID: 1, FirstName: Steve, LastName: Stephens');
}

void main(List<String> arguments) async {
  pretendFileIO();
  var response = await pretendHTTPRequest();
  var query = await pretendDatabaseQuery(response);
  print(query);
}
