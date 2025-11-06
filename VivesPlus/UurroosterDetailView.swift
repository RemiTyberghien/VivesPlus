import SwiftUI

struct UurroosterDetailView: View {
    @Environment(UurroosterDataStore.self) private var uurroosterDataStore
    @Binding var selectedID: String?
    
    var body: some View {
        if let selectedID = selectedID,
           let event = uurroosterDataStore.getEvent(eventid: selectedID) {
            
            VStack(alignment: .leading, spacing: 10) {
                Text(event.title)
                    .font(.headline)
                
                if let description = event.description {
                    Text(description)
                        .font(.subheadline)
                }
            }
            .padding()
            
        } else {
            Text("Selecteer event")
                .foregroundStyle(.secondary)
                .italic()
                .padding()
        }
    }
}

}

