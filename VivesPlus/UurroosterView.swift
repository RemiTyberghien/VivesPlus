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
                    .task {
                        await uurroosterDataStore.loadData()
                        loading = false
                    }
                            
            } else {
                List(uurroosterDataStore.getAllevents(), id: \.id) { event in
                    VStack{
                        Text(DateUtil.formatDateTime(date: event.startDateTime))
                        Text(event.title)
                    }
                    
            }
            }
        } detail: {
            
        }


    }
}

#Preview {
    UurroosterView()
}
