```dart
import 'dart:async';

Future<void> main() async {
  // Simulate an asynchronous operation that might throw an exception.
  try {
    await performAsyncOperation();
    print('Asynchronous operation completed successfully.');
  } on TimeoutException catch (e) {
    // Handle TimeoutException specifically.
    print('Timeout occurred: ${e.message}');
  } on Exception catch (e) {
    // Handle other exceptions.
    print('An error occurred: ${e.toString()}');
  } catch (e) {
    // Handle unexpected errors.
    print('An unexpected error occurred: $e');
  }
}

Future<void> performAsyncOperation() async {
  // Simulate an asynchronous operation that might take longer than expected.
  await Future.delayed(Duration(seconds: 5));
  // This might throw other exceptions based on some condition.
  // For this example, we will randomly decide whether it throws an exception
  if (DateTime.now().millisecond % 2 == 0) {
    throw TimeoutException('Operation timed out');
  } else {
    throw Exception('Something went wrong');
  }
}
```