import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      WelcomeView()
      ForEach(Exercise.exercises.indices, id: \.self) { index in
          ExerciseView(index: index)
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
