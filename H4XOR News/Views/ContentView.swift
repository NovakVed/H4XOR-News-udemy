import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4XOR News")
        }.onAppear(perform: networkManager.fetchData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
