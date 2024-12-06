# Improper Exception Handling in Asynchronous Dart Operations

This repository demonstrates a common error in Dart: improper exception handling within asynchronous functions. The provided code attempts to fetch data from an API, but its exception handling is incomplete, potentially leading to silent failures or unexpected behavior.

The `bug.dart` file shows the problematic code.  The `bugSolution.dart` file demonstrates improved error handling techniques.

## How to reproduce
1. Clone this repository.
2. Run `bug.dart`. Note the output and potential lack of clear error messages if the API request fails.
3. Run `bugSolution.dart` and observe the more robust error handling.
