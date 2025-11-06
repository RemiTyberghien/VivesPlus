//
//  ContentView.swift
//  VivesPlus
//
//  Created by Remi.Tyberghien on 04/11/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(UurroosterDataStore.self) private var uurroosterDataStore
        var body: some View {
        
        NavigationStack{
            UurroosterView()
        }.environment(uurroosterDataStore)
    }
}

#Preview {
    ContentView()
}
