# Diagonal Sum Solution

## Swift

```swift
func diagonalSum(of matrix: [[Int]]) -> Int {
    var sum = 0
    for i in 0..<matrix.count {
        sum += matrix[i][i]
        sum += matrix[i][matrix.count - 1 - i]
    }
    return sum
}
```

## Javascript

```javascript
function diagonalSum(matrix) {
    var sum = 0;
    for (var i = 0; i < matrix.length; i++) {
        sum += matrix[i][i];
        sum += matrix[i][matrix.length - 1 - i]
    }
    return sum
}
```

## Java

```java
public static int diagonalSum(int[][] arr) {
    int sum = 0;
    for (int i = 0; i < arr.length; i++) {
        sum += arr[i][i];
        sum += arr[i][arr.length - 1 - i];
    }
    return sum;
}
```