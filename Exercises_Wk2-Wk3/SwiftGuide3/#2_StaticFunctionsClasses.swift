import Swift

// Class Calculadora with static methods for addition and subtraction
class Calculadora {
  // Static method to add two integers
  static func sumar (a : Int, b : Int) -> Int {
    return a + b
  }
  
  // Static method to subtract one integer from another
  static func restar (a : Int, b : Int) -> Int {
    return a - b
  }
}

// Function to calculate the total sum and total subtraction of a list of integers
func calcularSumaYRestaTotales (numeros : [Int]) -> (sumaTotal : Int, restaTotal : Int) {
  var sumaTotal = 0
  var restaTotal = 0

  // Loop through each number in the list
  for numero in numeros {
    sumaTotal = Calculadora.sumar(a : sumaTotal, b : numero)
    restaTotal = Calculadora.restar(a : restaTotal, b : numero)
  }

  // Return a tuple with the total sum and total subtraction
  return (sumaTotal, restaTotal)
}

var numeros = [1, 2, 3, 4, 5] // Array of numbers to calculate
var resultado = calcularSumaYRestaTotales(numeros : numeros) // Calculate the sum and subtraction totals
print("La suma total es: \(resultado.sumaTotal)") // Print the total sum
print("La resta total es: \(resultado.restaTotal)") // Print the total subtraction
