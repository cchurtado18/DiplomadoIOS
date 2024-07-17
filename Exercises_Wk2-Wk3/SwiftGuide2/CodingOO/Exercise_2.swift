import Swift

// We declare the struct Rectangulo with its attributes
struct Rectangulo {
    var ancho: Double // Attribute for the width of the rectangle
    var alto: Double // Attribute for the height of the rectangle

    // Method to calculate the area of the rectangle
    func calcularArea() -> Double {
        return ancho * alto
    }

    // Method to calculate the perimeter of the rectangle
    func calcularPerimetro() -> Double {
        return 2 * (ancho + alto)
    }
}

var miRectangulo = Rectangulo(ancho: 5.0, alto: 10.0) // Create an instance of Rectangulo
print("Area: ", miRectangulo.calcularArea()) // Print the area of the rectangle
print("Perimetro: ", miRectangulo.calcularPerimetro()) // Print the perimeter of the rectangle
