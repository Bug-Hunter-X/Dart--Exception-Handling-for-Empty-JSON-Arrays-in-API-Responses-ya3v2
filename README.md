# Dart: Handling Empty JSON Arrays from API Responses

This repository demonstrates a common error when handling API responses in Dart:  an exception is thrown when attempting to access the first element of an empty JSON array.

The `bug.dart` file contains code that retrieves data from an API endpoint.  If the API returns an empty array, the code crashes because of accessing `data.first`. 

The solution (`bugSolution.dart`) shows how to correctly handle empty arrays to prevent the exception.

## How to Reproduce the Bug

1. Clone this repository.
2. Run `bug.dart`.  If the API returns an empty array, you will see an exception.

## Solution

The solution involves checking if the array is empty before attempting to access its elements.
