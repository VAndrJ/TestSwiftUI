import SwiftUI

struct ContentView: View {

    @State var start = CFAbsoluteTimeGetCurrent()
    @State var elapsedTime: CFAbsoluteTime = 0

    var body: some View {
        ScrollView {
            Text("Time to render: \(elapsedTime) seconds")
            VStack {
                ForEach(1...100, id: \.self) { index in
                    Row(image: "globe", text: "Hello, world #\(index)!")
                }
            }
            .padding()
        }
        .onAppear(perform: {
            elapsedTime = CFAbsoluteTimeGetCurrent() - start
        })
    }
}

struct Row: View {

    let image: String
    let text: String

    var body: some View {
        HStack {
            Image(systemName: image)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(text)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ContentView()
}
