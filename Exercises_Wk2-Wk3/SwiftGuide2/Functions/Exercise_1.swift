import Swift

// Function to calculate the sum recursively
func sumaRecursiva(n: Int) -> Int {
    if n == 0 {
        return 0 // Base case: when n is 0, return 0
    } else {
        return n + sumaRecursiva(n: n - 1) // Recursive case: add n to the sum of numbers from 0 to n-1
    }
}

// Function to calculate the sum iteratively
func sumaIterativa(n: Int) -> Int {
    var suma = 0 // Initialize sum to 0

    for i in 1...n {
        suma += i // Add each number from 1 to n to the sum
    }

    return suma // Return the computed sum
}

// Calculate sums using both recursive and iterative functions
var resultadoRecursivo = sumaRecursiva(n: 10)
var resultadoIterativo = sumaIterativa(n: 10)

// Print results
print("Suma Recursiva: ", resultadoRecursivo)
print("Suma Iterativa: ", resultadoIterativo)
