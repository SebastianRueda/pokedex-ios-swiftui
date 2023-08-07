import SwiftUI

struct ContentView: View {
    var body: some View {
        let pokemons = [
            Pokemon(name: "name1", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png"),
            Pokemon(name: "name2", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png"),
            Pokemon(name: "name3", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png"),
            Pokemon(name: "name4", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png"),
            Pokemon(name: "name5", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png"),
            Pokemon(name: "name6", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png"),
            Pokemon(name: "name7", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png"),
            Pokemon(name: "name8", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png"),
            Pokemon(name: "name9", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png"),
            Pokemon(name: "name10", image: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png")
        ]
        PokemonListView(pokemons: pokemons)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
