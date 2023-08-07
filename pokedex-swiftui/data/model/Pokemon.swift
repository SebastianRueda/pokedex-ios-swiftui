import Foundation

struct Pokemon: Codable, Identifiable {
    let id = UUID()
    let name: String
    let image: String
    
    private enum CodingKeys: String, CodingKey { case name, image }
}
