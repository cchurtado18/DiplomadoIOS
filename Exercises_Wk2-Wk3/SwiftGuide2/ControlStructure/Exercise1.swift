import Swift

// Function to perform selection sort on an array of integers
func ordenarPorSeleccion(ar: inout [Int]) {
    let n = ar.count // Get the number of elements in the array
    for i in 0..<n-1 { // Iterate through the array
        var minIndice = i // Assume the current position is the index of the smallest element
        
        for j in i+1..<n { // Iterate through the rest of the array
            if ar[j] < ar[minIndice] { // Find the actual smallest element in the unsorted portion
                minIndice = j
            }
        }
        
        if minIndice != i { // If the smallest element is not already in the correct position, swap them
            ar.swapAt(i, minIndice)
        }
    }
}

var numeros = [64, 25, 12, 22, 11] // Original array of numbers
print("Array original: \(numeros)") // Print the original array
ordenarPorSeleccion(ar: &numeros) // Sort the array using selection sort
print("Array ordenado: \(numeros)") // Print the sorted array
