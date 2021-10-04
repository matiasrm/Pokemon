//
//  ContentView.swift
//  Pokem
//
//  Created by Mati Montenegro on 03/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                ForEach(viewModel.pokemons, id: \.name) {
                    pokemon in Text(pokemon.name.capitalized)
                }
            }
            .navigationTitle("Pokemon!")
        } .onAppear {
                viewModel.getPokemon()
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
