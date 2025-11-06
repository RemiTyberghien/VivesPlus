//
//  ContentView.swift
//  VivesPlus
//
//  Created by Remi.Tyberghien on 04/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var UurroosterDataStore = UurroosterDataStore()
    var body: some View {
        
        NavigationStack{
            UurroosterView()
        }.environment(UurroosterDataStore)
    }
}

#Preview {
    ContentView()
}
