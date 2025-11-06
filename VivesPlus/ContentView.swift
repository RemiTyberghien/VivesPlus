//
//  ContentView.swift
//  VivesPlus
//
//  Created by Remi.Tyberghien on 04/11/2025.
//

import SwiftUI

struct ContentView: View {
   
    @State private var uurroosterDataStore = UurroosterDataStore()
        var body: some View {
        
        NavigationStack{
            UurroosterView()
        }.environment(uurroosterDataStore)
    }
}

#Preview {
    ContentView()
}
