import SwiftUI

struct ContentView: View {
    @State private var notes = [Note]()
    @State private var text = ""

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Add new note", text: $text)
                    Button(action: {
                        guard !text.isEmpty else { return }
                        
                        let note = Note(id: UUID(), text: text)
                        notes.append(note)
                        text = ""
                    }) {
                        Image(systemName: "plus").padding()
                    }
                    .fixedSize()
                    .tint(.blue)
                }
                
                List {
                    ForEach(0..<notes.count, id: \.self) { i in
                        NavigationLink {
                            DetailView(index: i, note: notes[i], totalNotes: notes.count)
                        } label: {
                            Text(notes[i].text)
                                .lineLimit(3)
                        }
                    }
                    .onDelete(perform: delete)
                }
                .navigationTitle("NoteDictate")
                .navigationBarTitleDisplayMode(.inline)
            }
            .padding()
        }
    }
    
    func delete(at offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
        }
    }
}

// For Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
