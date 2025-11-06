//
//  UurroosterView.swift
//  VivesPlus
//
//  Created by Remi.Tyberghien on 04/11/2025.
//

import SwiftUI

struct UurroosterView: View {
    
    @Environment(UurroosterDataStore.self) private var uurroosterDataStore
    @State var loading = true
    var body: some View {
        
        NavigationSplitView {
            if loading {
                ProgressView("Loading...")
            } else {
                List(uurroosterDataStore.uurrooster, id: \.self) { eventModel in
                    Text(eventModel.title)
            }
            }
        } detail: {
            
        }


    }
}

#Preview {
    UurroosterView()
}
