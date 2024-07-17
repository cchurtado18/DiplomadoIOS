import Swift

// Enum EstadoPedido with its cases detailing the state of the order (procesando, Enviando, or Entregado)
enum EstadoPedido { 
    case procesando
    case enviando
    case entregado
}

// Protocol NotificacionPedido, its function is to notify the change of the order status
protocol NotificacionPedido {
    func NotificarCambioDeEstado (nuevoEstado : EstadoPedido) -> Void
}

// Order class
class Pedido {
    var estado : EstadoPedido // The estado variable is implemented to the EstadoPedido enum
    var delegado : NotificacionPedido? // delegado is implemented to the NotificacionPedido protocol

    init (estado : EstadoPedido){ // Initializer to set the initial order state
        self.estado = estado
    }

    // The function cambiarEstado receives a nuevoEstado implemented to the EstadoPedido enum, if the delegado variable is not nil then it 
    // notifies a new state change with the NotificarCambioDeEstado protocol
    func cambiarEstado (nuevoEstado : EstadoPedido){ 
        self.estado = nuevoEstado
        if delegado != nil {
            delegado?.NotificarCambioDeEstado(nuevoEstado: estado)
        }
    }
}

// Class GestorPedido implementing NotificacionPedido
class GestorPedido : NotificacionPedido {
    func NotificarCambioDeEstado(nuevoEstado: EstadoPedido) {
        print("The order status has changed to: ", nuevoEstado)
    }
}

var gestor = GestorPedido()
var pedido = Pedido(estado: EstadoPedido.procesando)

pedido.delegado = gestor
pedido.cambiarEstado(nuevoEstado: EstadoPedido.entregado)