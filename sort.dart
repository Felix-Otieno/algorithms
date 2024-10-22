import 'dart:math';

void main() {
  // Generate a random list of integers
  List<int> randomList = List.generate(1000, (index) => Random().nextInt(10000));

  // Bubble Sort
  List<int> bubbleSortedList = List.from(randomList); // Copy the list for Bubble Sort
  Stopwatch bubbleStopwatch = Stopwatch()..start();
  bubbleSort(bubbleSortedList);
  bubbleStopwatch.stop();
  print('Bubble Sort Execution Time: ${bubbleStopwatch.elapsedMilliseconds} ms');

  // Quick Sort
  List<int> quickSortedList = List.from(randomList); // Copy the list for Quick Sort
  Stopwatch quickStopwatch = Stopwatch()..start();
  quickSort(quickSortedList, 0, quickSortedList.length - 1);
  quickStopwatch.stop();
  print('Quick Sort Execution Time: ${quickStopwatch.elapsedMilliseconds} ms');

  // Verify if the lists are sorted
  print('Is Bubble Sorted: ${isSorted(bubbleSortedList)}');
  print('Is Quick Sorted: ${isSorted(quickSortedList)}');
}

// Bubble Sort implementation
void bubbleSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - 1 - i; j++) {
      if (list[j] > list[j + 1]) {
        // Swap
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

// Quick Sort implementation
void quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pi = partition(list, low, high);
    quickSort(list, low, pi - 1);
    quickSort(list, pi + 1, high);
  }
}

int partition(List<int> list, int low, int high) {
  int pivot = list[high];
  int i = (low - 1); // Index of smaller element
  for (int j = low; j < high; j++) {
    if (list[j] < pivot) {
      i++;
      // Swap
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }
  // Swap the pivot element with the element at i + 1
  int temp = list[i + 1];
  list[i + 1] = list[high];
  list[high] = temp;
  return i + 1;
}

// Function to check if a list is sorted
bool isSorted(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i] > list[i + 1]) {
      return false;
    }
  }
  return true;
}
