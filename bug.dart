```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final data = jsonDecode(response.body) as List<dynamic>;

      // The error happens here.  If the server sends an empty JSON array ([]), 
      // then data.first will throw an exception.
      final firstItem = data.first;

      // Process firstItem
      print(firstItem);
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the exception appropriately
  }
}
```