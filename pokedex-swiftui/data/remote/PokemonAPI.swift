import Foundation

class PokemonApi: ObservableObject {

    func fetchData(showData: @escaping ([Pokemon]) -> ()) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            var pokemons: [Pokemon] = []
            
            let response = try! JSONDecoder().decode(PokemonResponse.self, from: data!)
            for (index, result) in response.results!.enumerated() {
                pokemons +=
                    [
                        Pokemon(
                            name: result.name,
                            image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(index + 1).png"
                        )
                    ]
            }
            
            DispatchQueue.main.async {
                showData(pokemons)
            }
        }.resume()
    }
}
