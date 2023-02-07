import SwiftUI

@main
struct UnitConversionApp: App {
    var body: some Scene {
        WindowGroup {
            if #available(iOS 15.0, *) {
                ContentView()
            } else {
                //no-op
            }
        }
    }
}
