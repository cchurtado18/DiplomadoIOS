//
//  NewsUam.swift
//  App Final
//
//  Created by Carlos Hurtado on 8/3/25.
//


import SwiftUI

struct NewView: View {
    
    @State private var event: ApiEvent?
    
    var body: some View {
        VStack(spacing: 20){
            
            AsyncImage(url: URL(string: event?.imageUrl ?? "")) { image in image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                
            } placeholder: {
                Circle()
                    .foregroundColor(.secondary)
            }
            .frame(width: 120,height: 120)
            
            Text(event?.title ?? "Title placeholder")
                .bold()
                .font(.title3)
            
            Text(event?.description ?? "Description Placeholder")
                .padding()
            
            Text(event?.dateTime ?? "Dateplaceholder")
                .padding(-30)
            
            Text(event?.location ?? "Location placeholder")
                .padding()
            
            Text(event?.organizers ?? "Organizers Placeholders")
            
            Spacer()
        }
        .padding()
        .task {
            do{
                event = try await getEvent()
            } catch ApiError.invalidURL{
                print("invalid URL")
            } catch ApiError.invalidResponse {
                print("invalid Response")
            } catch ApiError.invalidData {
                print("invalid data")
            } catch {
                print("Unexpected error")
            }
        }
    }
    
    func getEvent() async throws -> ApiEvent {
        let endpoint = "https://uam-server.up.railway.app/api/v1/university_events"
        
        guard let url = URL(string: endpoint) else { throw ApiError.invalidURL}
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw ApiError.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(ApiEvent.self, from: data)
        } catch {
            throw ApiError.invalidData
        }
    }
}

struct New_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}

struct ApiEvent: Codable {
    let id: String
    let title: String
    let description: String
    let location: String
    let dateTime: String
    let organizers: String
    let imageUrl: String
}

enum ApiError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}
