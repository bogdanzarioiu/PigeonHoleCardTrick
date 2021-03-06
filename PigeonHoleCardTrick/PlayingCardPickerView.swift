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

    @State var suits = ["♣️", "❤️", "♠️", "♦️"]
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
                        
                    }, label: {
                        Text(item)
                            
                    })
                    .disabled(didSelectValue)
                    
                    
                    
                }

            }.padding()
            //Text("And now select the suit")
            Picker("And now select the suit", selection: $selectedSuit) {
                Text(suits[0])
                Text(suits[1])
                Text(suits[2])
                Text(suits[3])
            }
            .pickerStyle(MenuPickerStyle())
            .opacity(didSelectValue ? 1.0 : 0.2)
            
        }
    }
    
}

struct PlayingCardPickerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingCardPickerView(selectedValue: .constant(""), selectedSuit: .constant(""))
    }
}
