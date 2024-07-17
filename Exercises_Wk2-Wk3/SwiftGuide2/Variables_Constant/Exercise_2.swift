import Swift

// Function to calculate the area of a triangle given its side lengths
func calcularAreaTriangulo(a: Double, b: Double, c: Double) -> Double? {
    // Check if the sides can form a valid triangle
    let condicion = (a <= 0) || (b <= 0) || (c <= 0) || (a + b <= c) || (a + c <= b) || (b + c <= a)
    
    if condicion {
        print("Los lados ingresados no forman un triángulo válido")
        return nil
    }
    
    // Calculate the semi-perimeter
    var s = (a + b + c) / 2
    
    // Calculate the area using Heron's formula
    var area = sqrt(s * (s - a) * (s - b) * (s - c))
    
    return area
}

// Example usage
var area = calcularAreaTriangulo(a: 3, b: 4, c: 5)

if let area = area {
    print("El área del triángulo es: ", area)
} else {
    print("Datos inválidos para los lados del triángulo")
}
