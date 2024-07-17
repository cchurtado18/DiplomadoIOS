import Swift

// Protocol Empleado with a method to calculate salary
protocol Empleado {
  func calcularSalario() -> Double
}

// Class EmpleadoBase conforming to the Empleado protocol
// Reference type implies passing the instance of an object A to an object B and vice versa
class EmpleadoBase: Empleado {
  var salarioBase: Double

  init(salarioBase: Double) {
    self.salarioBase = salarioBase
  }

  // Method to calculate the salary of a base employee
  func calcularSalario() -> Double {
    return salarioBase
  }
}

// Struct EmpleadoContrato conforming to the Empleado protocol
// Value type implies all primitive types have value semantics
struct EmpleadoContrato: Empleado { 
  var tarifaHora: Double
  var horasTrabajadas: Double

  // Method to calculate the salary of a contract employee
  func calcularSalario() -> Double {
    return tarifaHora * horasTrabajadas
  }
}

// Function to calculate the total salary of a list of employees
func calcularSalarioTotal(empleados: [Empleado]) -> Double {
  var salarioTotal = 0.0

  // Loop through each employee and add their salary to the total salary
  for empleado in empleados {
    salarioTotal += empleado.calcularSalario()
  }

  return salarioTotal
}

var empleadoBase = EmpleadoBase(salarioBase: 3000.0) // Create a base employee with a base salary of 3000.0
var empleadoContrato = EmpleadoContrato(tarifaHora: 20.0, horasTrabajadas: 100.0) // Create a contract employee with hourly rate 20.0 and 100.0 hours worked
var empleados: [Empleado] = [empleadoBase, empleadoContrato] // Array of employees

var salarioTotal = calcularSalarioTotal(empleados: empleados) // Calculate the total salary of the employees
print("El salario total de los empleados es: \(salarioTotal)") // Print the total salary of the employees
