import Swift

// Enum OperacionMatematica with cases for different mathematical operations
enum OperacionMatematica {
    case suma
    case resta
    case multiplicacion
    case division
}

// Class OperadorMatematico to perform mathematical operations
class OperadorMatematico {
    // A static function does not need an instance to be called, unlike a normal function
    static func realizarOperacion(a: Double, b: Double, operacion: OperacionMatematica) -> Double {
        switch operacion {
            case .suma:
                return a + b
            case .resta:
                return a - b
            case .multiplicacion:
                return a * b
            case .division:
                if b != 0 {
                    return a / b
                } else {
                    print("Error: division by zero")
                    return 0
                }
        }
    }
}

var resultadoSuma = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: .suma)
print("Resultado de la suma: ", resultadoSuma)

var resultadoResta = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: .resta)
print("Resultado de la resta: ", resultadoResta)

var resultadoMultiplicacion = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: .multiplicacion)
print("Resultado de la multiplicacion: ", resultadoMultiplicacion)

var resultadoDivision = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: .division)
print("Resultado de la division: ", resultadoDivision)
