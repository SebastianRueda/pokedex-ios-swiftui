//
//  PokemonListView.swift
//  pokedex-swiftui
//
//  Created by Mario Sebastian Rueda Olarte on 07/08/2023.
//

import SwiftUI

struct PokemonListView: View {
    let pokemons: [Pokemon]
    
    var body: some View {
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        
        let padding: CGFloat = 8
        ScrollView {
            LazyVGrid(columns: columns, spacing: padding) {
                ForEach(pokemons) { pokemon in
                    PokemonItemView(pokemon: pokemon)
                }
            }
            .padding(padding)
        }
    }
}

struct PokemonListView_Previews: PreviewProvider {
    static var previews: some View {
        let pokemons = [
            Pokemon(name: "name 1", image: "image 1"),
            Pokemon(name: "name 2", image: "image 2"),
            Pokemon(name: "name 3", image: "image 3"),
            Pokemon(name: "name 4", image: "image 4")
        ]
        PokemonListView(pokemons: pokemons)
    }
}
