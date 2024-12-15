void selectionSort(List<int> list) {
  int n = list.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      if (list[j] < list[minIndex]) {
        minIndex = j;
      }
    }

    if (minIndex != i) {
      list[i] = list[i] + list[minIndex];
      list[minIndex] = list[i] - list[minIndex];
      list[i] = list[i] - list[minIndex];
    }
  }
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print('Original List: $numbers');

  selectionSort(numbers);

  print('Sorted List: $numbers');
}
