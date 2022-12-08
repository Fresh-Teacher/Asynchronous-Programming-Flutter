void pretendFileIO() {
  print('File IO: Started');
  print('File IO: File contents => Hello Futures');
  print('File IO: Done');
}

Future<String> pretendHTTPRequest() {
  print('HTTP Request: Started');
  return Future.delayed(Duration(seconds: 8), () => ('A JSON placeholder'));
}

void pretendDatabaseQuery(String searchTerm) {
  print('Database query for $searchTerm: Started');
  print(
      'Database query: Resultset => ID: 1, FirstName: Steve, LastName: Stephens');
  print('Database query: Done');
}

void main(List<String> arguments) {
  pretendFileIO();
  var response = pretendHTTPRequest();
  response.then((s) {
    print('HTTP Request: Response => $s');
    print('HTTP Request: Done');
  });
  pretendDatabaseQuery('Flutter');
}
