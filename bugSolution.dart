```dart
import 'dart:async';

Future<void> main() async {
  try {
    await performAsyncOperation();
    print('Asynchronous operation completed successfully.');
  } on TimeoutException catch (e) {
    print('Timeout occurred: ${e.message}');
    // Retry the operation or implement alternative logic
  } on Exception catch (e) {
    print('An error occurred: ${e.toString()}');
    // Handle specific exception types
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Handle unexpected errors
  }
}

Future<void> performAsyncOperation() async {
  await Future.delayed(Duration(seconds: 5));
  if (DateTime.now().millisecond % 2 == 0) {
    throw TimeoutException('Operation timed out');
  } else {
    throw Exception('Something went wrong');
  }
}
```