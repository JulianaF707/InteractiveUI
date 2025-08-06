import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var favanimal1 = ""
    @State private var favanimal2 = ""
    @State private var animalTitle = "What are your two favorite animals?"
    var body: some View {
        VStack {
            
        Text(textTitle)
                .font(.title)
        TextField("type here...", text: $name)
            .multilineTextAlignment(.center)
            .font(.title)
            .border(Color.gray, width: 1)
        Button("Submit Name") {
            textTitle = ("Welcome, \(name)!")
            name = ""
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.blue.opacity(0.5))
        Spacer()
                .frame(height: 40)
        Text(animalTitle)
                .font(.title)
            TextField("type here...", text: $favanimal1)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
        TextField("type here...", text: $favanimal2)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
        Button("Submit Name") {
                animalTitle = ("I like \(favanimal1) and \(favanimal2) also!")
                favanimal1 = ""
                favanimal2 = ""
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.purple.opacity(0.5))
        Spacer()
                    .frame(height: 40)
        DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
