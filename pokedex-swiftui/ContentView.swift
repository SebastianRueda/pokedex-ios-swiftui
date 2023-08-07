import SwiftUI

struct ContentView: View {
    
    @State
    var pokemons = [Pokemon]()
    
    var body: some View {
        PokemonListView(pokemons: pokemons)
            .background(.green.opacity(0.4))
            .onAppear() {
                PokemonApi().fetchData { (pokemons) in
                    self.pokemons = pokemons
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
