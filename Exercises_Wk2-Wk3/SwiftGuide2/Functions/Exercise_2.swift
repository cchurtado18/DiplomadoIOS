import Swift

// Recursive function to perform binary search on a sorted array
func busquedaBinariaRecursiva(array: [Int], valor: Int, inicio: Int, fin: Int) -> Int? {
    // Base case: if the start index exceeds the end index, the value is not found
    if inicio > fin {
        return nil
    }

    // Calculate the middle index
    let medio = (inicio + fin) / 2

    // If the middle element is the target value, return its index
    if array[medio] == valor {
        return medio
    }
    // If the middle element is less than the target value, search the right half of the array
    else if array[medio] < valor {
        return busquedaBinariaRecursiva(array: array, valor: valor, inicio: medio + 1, fin: fin)
    }
    // If the middle element is greater than the target value, search the left half of the array
    else {
        return busquedaBinariaRecursiva(array: array, valor: valor, inicio: inicio, fin: medio - 1)
    }
}

let numerosOrdenados = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Perform binary search for the value 5 in the sorted array 'numerosOrdenados'
if let posicion = busquedaBinariaRecursiva(array: numerosOrdenados, valor: 5, inicio: 0, fin: numerosOrdenados.count - 1) {
    print("El valor se encuentra en la posición: \(posicion)")
} else {
    print("El valor no se encuentra en el array")
}
