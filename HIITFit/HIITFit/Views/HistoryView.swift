import SwiftUI

struct HistoryView: View {
  let today = Date()
  let yesterday = Date().addingTimeInterval(-86400)
  
  let exercise1 = ["squat", "step-up", "Burpee", "Sun Salute"]
  let exercise2 = ["squat", "step-up", "Burpee"]
  
  
  var body: some View {
    VStack {
      Text("History")
        .font(.title)
        .padding()
      Form {
        Section(
          header:
            Text(today.formatted(as: "MMM d"))
            .font(.headline)) {
              // section content
              Section(
                header:
                  Text(yesterday.formatted(as: "MMM d"))
                  .font(.headline)) {
                    // section content
                  }
            }
      }
    }
  }
}


#Preview {
  HistoryView()
}
