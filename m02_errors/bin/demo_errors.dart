void pretendFileIO() {
  print('File IO: Started');
  print('File IO: File Contents => Hello world');
  print('File IO: Done');
}

Future<String> pretendHTTPRequest({bool withError = false}) async {
  print('HTTP Request: Started');
  if (withError) {
    return Future.error('Pretend HTTP Timeout');
  } else {
    return Future.delayed(Duration(seconds: 8), () => 'A JSON placeholder');
  }
}

void pretendDatabaseQuery(String searchTerm) {
  print('Database query: Started for $searchTerm');
  print(
      'Database query: Resultset => ID: 1, FirstName: Steve, LastName: Stephens');
  print('Database query: Done');
}

void main(List<String> arguments) async {
  pretendFileIO();
  try {
    var response = await pretendHTTPRequest(withError: true);
    print('HTTP Request: Response => $response');
    print('HTTP Request: Done');
    pretendDatabaseQuery(response);
  } catch (e) {
    print('An error occurred: $e');
  }
}
