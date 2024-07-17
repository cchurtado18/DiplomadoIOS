import Swift

// Class Grafo represents a graph using an adjacency list
class Grafo {
    var adjList: [Int: [Int]] // Dictionary to store the adjacency list of the graph

    init() {
        adjList = [Int: [Int]]() // Initialize the adjacency list as an empty dictionary
    }

    // Method to add an edge to the graph
    func agregaArista(from: Int, to: Int) {
        if adjList[from] == nil {
            adjList[from] = [Int]() // If there is no entry for the 'from' node, create an empty list
        }
        adjList[from]?.append(to) // Add the 'to' node to the adjacency list of the 'from' node
    }

    // Method to perform Depth-First Search (DFS) starting from a given node
    func dfs(inicio: Int) -> [Int] {
        var visitados = Set<Int>() // Set to keep track of visited nodes
        var resultado = [Int]() // List to store the result of the DFS traversal
        dfsUtil(nodo: inicio, visitados: &visitados, resultado: &resultado) // Call the recursive utility function
        return resultado
    }

    // Private recursive utility function for DFS
    private func dfsUtil(nodo: Int, visitados: inout Set<Int>, resultado: inout [Int]) {
        visitados.insert(nodo) // Mark the current node as visited
        resultado.append(nodo) // Add the current node to the result list
        
        if let vecinos = adjList[nodo] { // Get the neighbors of the current node
            for vecino in vecinos {
                if !visitados.contains(vecino) { // If the neighbor has not been visited, recurse on it
                    dfsUtil(nodo: vecino, visitados: &visitados, resultado: &resultado)
                }
            }
        }
    }
}

// Example usage
let grafo = Grafo() // Create a new graph
grafo.agregaArista(from: 0, to: 1) // Add edges to the graph
grafo.agregaArista(from: 0, to: 2)
grafo.agregaArista(from: 1, to: 2)
grafo.agregaArista(from: 2, to: 0)
grafo.agregaArista(from: 2, to: 3)
grafo.agregaArista(from: 3, to: 3)

let resultadoDFS = grafo.dfs(inicio: 2) // Perform DFS starting from node 2
print("Recorrido DFS: \(resultadoDFS)") // Print the result of the DFS traversal
