void selectionSort(List<int> list) {
  int n = list.length;

  for (int i = 0; i < n - 1; i++) {
    // Assume the first unsorted element is the minimum
    int minIndex = i;

    // Find the index of the minimum element in the unsorted portion
    for (int j = i + 1; j < n; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }
    // Swap the found minimum element with the first unsorted element
    if (minIndex != i) {
      int temp = list[i];
      list[i] = list[minIndex];
      list[minIndex] = temp;
    }
  }
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print('Original List: $numbers');

  selectionSort(numbers);

  print('Sorted List: $numbers');
}
