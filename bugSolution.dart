```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;

      // Check if the array is empty before accessing data.first
      if (data.isNotEmpty) {
        final firstItem = data.first;
        print(firstItem);
      } else {
        print('API returned an empty array.');
        // Handle the empty array case appropriately, maybe use a default value
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the exception appropriately
  }
}
```