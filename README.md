# Uncommon Dart Bug: Mishandling of Asynchronous Exceptions

This repository demonstrates an uncommon error in Dart related to the mishandling of asynchronous operations and exceptions. The `bug.dart` file contains code that showcases the issue, while `bugSolution.dart` provides a corrected version.

## Bug Description
The provided Dart code simulates an asynchronous operation (`performAsyncOperation`) that may throw either a `TimeoutException` or a general `Exception`. The initial implementation lacks proper exception handling, potentially leading to unexpected behavior or crashes.

## Solution
The `bugSolution.dart` file demonstrates best practices for handling asynchronous exceptions.  It uses specific `catch` blocks to handle `TimeoutException` and other `Exception` types separately. This approach improves error handling and allows for more tailored responses to different error conditions.

## How to reproduce

1. Clone this repository
2. Run `bug.dart` and observe the output. Note the different exception messages and how they are handled (or mishandled).
3. Run `bugSolution.dart` and compare the output to see how robust exception handling improves the code's stability and clarity.
