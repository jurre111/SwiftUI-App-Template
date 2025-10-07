import SwiftUI
import Charts

struct ContentView: View {
    @State private var slope = 1.0
    @State private var isEditing = false

    var body: some View {
        Chart {
            LinePlot(x: "x", y: "y") { x in
                slope*x
            }
        }
        .chartXScale(domain: -10...10)
        .chartYScale(domain: -10...10)
        .frame(height: 200)
        .padding()
        Slider(
            value: $slope,
            in: 0...3,
            onEditingChanged: { editing in
                isEditing = editing
            }
        )
    }
}

#Preview {
    ContentView()
}
