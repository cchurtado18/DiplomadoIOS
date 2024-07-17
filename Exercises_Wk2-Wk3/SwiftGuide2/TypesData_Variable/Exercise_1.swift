import Swift

// Function to calculate statistics: mean, median, and mode
func calcularEstadisticas(numeros: [Int]) -> (media: Double, mediana: Double, moda: [Int])? {
    guard !numeros.isEmpty else {
        return nil // Return nil if the array is empty
    }
    
    // Calculate the mean
    let suma = numeros.reduce(0, +)
    let media = Double(suma) / Double(numeros.count)
    
    // Calculate the median
    let numerosOrdenados = numeros.sorted()
    let mitad = numeros.count / 2
    let mediana: Double
    if numeros.count % 2 == 0 {
        mediana = Double(numerosOrdenados[mitad - 1] + numerosOrdenados[mitad]) / 2.0
    } else {
        mediana = Double(numerosOrdenados[mitad])
    }
    
    // Calculate the mode
    var frecuencia: [Int: Int] = [:]
    for numero in numeros {
        frecuencia[numero, default: 0] += 1
    }
    
    let maxFrecuencia = frecuencia.values.max() ?? 0
    let moda = frecuencia.filter { $0.value == maxFrecuencia }.keys.sorted()
    
    return (media, mediana, moda) // Return tuple with calculated statistics
}

// Example usage
if let estadisticas = calcularEstadisticas(numeros: [1, 2, 2, 3, 4, 4, 4, 5]) {
    print("Media: ", estadisticas.media)
    print("Mediana: ", estadisticas.mediana)
    print("Moda: ", estadisticas.moda)
} else {
    print("La lista de números está vacía.")
}
