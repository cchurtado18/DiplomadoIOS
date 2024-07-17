import Swift

// We declare the protocol Volable with a method volar
protocol Volable {
    func volar() -> String
}

// Class Pajaro conforms to the Volable protocol
class Pajaro: Volable {
    // Method to implement volar for Pajaro
    func volar() -> String {
        return "El pájaro está volando"
    }
}

// Class Avion conforms to the Volable protocol
class Avion: Volable {
    // Method to implement volar for Avion
    func volar() -> String {
        return "El avión está despegando"
    }
}

var miPajaro = Pajaro() // Create an instance of Pajaro
var miAvion = Avion() // Create an instance of Avion

print(miPajaro.volar()) // Print the flying behavior of Pajaro
print(miAvion.volar()) // Print the flying behavior of Avion
