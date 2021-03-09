//
//  PlayingCardPickerView.swift
//  PigeonHoleCardTrick
//
//  Created by Bogdan on 3/4/21.
//

import SwiftUI

struct PlayingCardPickerView: View {
    let column1 = ["A", "2", "3", "4", "5", "6", "7",
                   "8", "9", "10", "J", "Q","K"]
    @State private var didSelectValue = false

    var suits = ["♣️", "❤️", "♠️", "♦️"]
    @Binding var selectedValue: String
    @Binding var selectedSuit: String
    
    
    let layout = [
        GridItem(.adaptive(minimum: 45))
    ]
    
    var body: some View {
        VStack {
            Text("Select the value of the card")
            LazyVGrid(columns: layout, spacing: 20) {
                ForEach(column1, id: \.self) { item in
                    Button(action: {
                        self.selectedValue = item
                        self.didSelectValue.toggle()
                    }, label: {
                        Text(item)
                            .accentColor(.black)
                            .font(.title)
                            
                            
                            
                    })
                    .disabled(didSelectValue)
                    
                    
                    
                }

            }.padding()
            Picker("Press to select the suit", selection: $selectedSuit) {
                ForEach(0 ..< suits.count) {
                    Text(self.suits[$0]).tag($0)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .opacity(didSelectValue ? 1.0 : 0.2)
            
        }.onDisappear {
//            selectedValue = ""
//            selectedSuit = 0
        }
    }
    
}

struct PlayingCardPickerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingCardPickerView(selectedValue: .constant(""), selectedSuit: .constant("♣️"))
    }
}
