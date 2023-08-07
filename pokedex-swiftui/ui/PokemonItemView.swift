//
//  PokemonItemView.swift
//  pokedex-swiftui
//
//  Created by Mario Sebastian Rueda Olarte on 07/08/2023.
//

import SwiftUI

struct PokemonItemView: View {
    let pokemon: Pokemon
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: pokemon.image))
                .frame(width: 64, height: 64)
                .padding(.bottom, 12)
            Text(pokemon.name)
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity
        )
        .padding(16.0)
        .cornerRadius(8)
        .background(.green)
    }
}

struct PokemonItemView_Previews: PreviewProvider {
    static var previews: some View {
        let pokemon: Pokemon = Pokemon(name: "name", image: "image")
        PokemonItemView(pokemon: pokemon)
    }
}
