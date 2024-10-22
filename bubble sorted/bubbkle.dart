List<int> bubbleSort(List<int> listA) {
  bool sorted = false;

  while (!sorted) {
    sorted = true;
    for (int i = 0; i < listA.length - 1; i++) {
      if (listA[i] > listA[i + 1]) {
        sorted = false;
        // Swap the elements
        int temp = listA[i];
        listA[i] = listA[i + 1];
        listA[i + 1] = temp;
      }
    }
  }
  return listA;
}

void main() {
  List<int> sortedList = bubbleSort([4, 7, 9, 2, 3, 1, 8, 6, 5]);
  print(sortedList);  // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
}
