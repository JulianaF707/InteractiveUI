import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
        Text("What is your name?")
                .font(.title)
        Spacer()
                .frame(height: 25)
        Text("What is your name?")
        Spacer()
                .frame(height: 25)
        Button("Submit Name")
        Spacer()
                    .frame(height: 25)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
