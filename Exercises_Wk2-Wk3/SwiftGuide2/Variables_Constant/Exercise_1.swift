import Swift

// Function to calculate area and perimeter of a rectangle
func ClacularAreaYPerimetro(ancho: Double, alto: Double) -> (area: Double, perimetro: Double) {
    // Calculate area: width * height
    let area = ancho * alto
    
    // Calculate perimeter: 2 * (width + height)
    let perimetro = 2 * (ancho + alto)

    // Return tuple containing area and perimeter
    return (area, perimetro)
}

// Example usage:
let resultado = ClacularAreaYPerimetro(ancho: 5, alto: 10)
print("Area: ", resultado.area)
print("Perimetro: ", resultado.perimetro)
