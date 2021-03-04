//
//  PlayingCardPickerView.swift
//  PigeonHoleCardTrick
//
//  Created by Bogdan on 3/4/21.
//

import SwiftUI

struct PlayingCardPickerView: View {
    let column1 = ["A♣️", "2♣️", "3♣️", "4♣️", "5♣️", "6♣️", "7♣️",
                   "8♣️", "9♣️", "10♣️", "J♣️", "Q♣️","K♣️"]
    let column2 = ["A❤️", "2❤️", "3❤️", "4❤️", "5❤️", "6❤️", "7❤️",
                   "8❤️", "9❤️", "10❤️", "J❤️", "Q❤️","K❤️"]
    let column3 = ["A♠️", "2♠️", "3♠️", "4♠️", "5♠️", "6♠️", "7♠️",
                   "8♠️", "9♠️", "10♠️", "J♠️", "Q♠️","K♠️"]
    let column4 = ["A♦️", "2♦️", "3♦️", "4♦️", "5♦️", "6♦️", "7♦️",
                   "8♦️", "9♦️", "10♦️", "J♦️", "Q♦️","K♦️"]
    
    
    
    let layout = [
        GridItem(.adaptive(minimum: 45))
    ]
    
    var body: some View {
        LazyHGrid(rows: layout, spacing: 20) {
            ForEach(column1, id: \.self) { item in
                Text(item)
                
            }
            Spacer()
            ForEach(column2, id: \.self) { item in
                Text(item)
                
            }
            Spacer()
            ForEach(column3, id: \.self) { item in
                Text(item)
                
            }
            Spacer()
            ForEach(column4, id: \.self) { item in
                Text(item)
                
            }
        }
    }
}

struct PlayingCardPickerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingCardPickerView()
    }
}
