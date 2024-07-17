import Swift

// We declare the class Coche, and its attributes
class Coche {
    var marca: String // Attribute for the brand of the car
    var modelo: String // Attribute for the model of the car
    var año: Int // Attribute for the year of the car
    
    // Initializer to set the attributes of the car
    init(marca: String, modelo: String, año: Int) {
        self.marca = marca
        self.modelo = modelo
        self.año = año
    }
    
    // Method to describe the car
    func describir() -> String {
        return "Coche: \(marca) \(modelo), Año: \(año)"
    }
}

let miCoche = Coche(marca: "Toyota", modelo: "Corolla", año: 2020) // Create an instance of Coche
print(miCoche.describir()) // Print the description of the car
