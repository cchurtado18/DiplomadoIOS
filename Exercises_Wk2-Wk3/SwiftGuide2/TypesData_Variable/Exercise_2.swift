import Swift

// Function to multiply two matrices
func multiplicarMatrices(matrizA: [[Int]], matrizB: [[Int]]) -> [[Int]]? {
    let filasA = matrizA.count
    let columnasA = matrizA[0].count
    let filasB = matrizB.count
    let columnasB = matrizB[0].count
    
    // Check if matrices can be multiplied
    if columnasA != filasB {
        print("Las matrices no pueden ser multiplicadas") // Print error message
        return nil // Return nil if matrices cannot be multiplied
    }
    
    // Initialize result matrix with appropriate dimensions
    var matrizResultado = Array(repeating: Array(repeating: 0, count: columnasB), count: filasA)
   
    // Perform matrix multiplication
    for i in 0..<filasA {
        for j in 0..<columnasB {
            for k in 0..<columnasA {
                matrizResultado[i][j] += matrizA[i][k] * matrizB[k][j]
            }
        }
    }
    
    return matrizResultado // Return the resulting matrix
}

// Example usage
if let producto = multiplicarMatrices(matrizA: [[1, 2], [3, 4]], matrizB: [[5, 6], [7, 8]]) {
    print("Producto de matrices: ", producto)
} else {
    print("No se pudo realizar la multiplicación de matrices.")
}
