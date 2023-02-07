import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {

    @State var selectedInputUnit: String = "meter (m)"
    @State var selectedOutputUnit: String = "meter (m)"
    @State var inputValue: Double?
    @FocusState var isFocusInput: Bool
    let allLengthUnits = ["millimeter (mm)", "centimeter (cm)", "meter (m)", "kilometer (km)", "feet (ft)", "yard (yd)", "mile (mi)"]
    let weight = [1, 10, 1000, 1000000, 304.8, 914.4, 1609344]

    var inputValueInMM: Double {
        if let index = allLengthUnits.firstIndex(of: selectedInputUnit), let inputValue = inputValue {
            return inputValue * weight[index]
        }
        return 0.0;
    }
    
    var outputValue: Double {
        if let index = allLengthUnits.firstIndex(of: selectedOutputUnit) {
            return inputValueInMM/weight[index]
        }
        return 0.0
    }

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Input Unit", selection: $selectedInputUnit) {
                        ForEach(allLengthUnits, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    Picker("Output Unit", selection: $selectedOutputUnit) {
                        ForEach(allLengthUnits, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section {
                    TextField("Enter value in \(selectedInputUnit)", value: $inputValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($isFocusInput)
                }
                
                Section {
                    Text("Output: \(outputValue.formatted()) \(selectedOutputUnit).")
                }
            }
            .navigationTitle("Unit Conversion")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isFocusInput = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            ContentView()
        } else {
            //no-op
        }
    }
}
