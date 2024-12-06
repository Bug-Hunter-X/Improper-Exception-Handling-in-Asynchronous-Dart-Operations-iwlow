```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Do something with the data
      print('Success: ${response.body}');
    } else {
      //More specific error handling based on status code
      throw Exception('Failed to load data. Status code: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on SocketException catch (e) {
    print('Network error: $e');
  } on FormatException catch (e) {
    print('Data format error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
    //Consider logging this for debugging purposes
  }
}
```