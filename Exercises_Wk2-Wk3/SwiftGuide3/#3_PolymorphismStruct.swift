import Swift

// Protocol Figura with a method to calculate the area
protocol Figura {
  func calcularArea() -> Double
}

// Struct Cuadrado conforming to the Figura protocol
struct Cuadrado: Figura {
  var lado: Double

  // Method to calculate the area of the square
  func calcularArea() -> Double {
    return lado * lado
  }
}

// Struct Rectangulo conforming to the Figura protocol
struct Rectangulo: Figura {
  var ancho: Double
  var alto: Double

  // Method to calculate the area of the rectangle
  func calcularArea() -> Double {
    return ancho * alto
  }
}

// Function to calculate the total area of a list of figures
func calcularAreaTotal(figuras: [Figura]) -> Double {
  var areaTotal: Double = 0.0

  // Loop through each figure and add its area to the total area
  for figura in figuras {
    areaTotal += figura.calcularArea()
  }

  return areaTotal
}

var cuadrado = Cuadrado(lado: 4.0) // Create a square with side length 4.0
var rectangulo = Rectangulo(ancho: 3.0, alto: 5.0) // Create a rectangle with width 3.0 and height 5.0
var figuras: [Figura] = [cuadrado, rectangulo] // Array of figures

var areaTotal = calcularAreaTotal(figuras: figuras) // Calculate the total area of the figures
print("El área total de las figuras es: \(areaTotal)") // Print the total area of the figures
