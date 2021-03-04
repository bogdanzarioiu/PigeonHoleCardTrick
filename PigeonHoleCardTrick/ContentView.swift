//
//  ContentView.swift
//  PigeonHoleCardTrick
//
//  Created by Bogdan on 3/4/21.
//



// I think I will use emojis + letters/numbers to represent the playing cards.
//TODO: A picker view for the playing cards
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Do you want to see a cool thing???\nOk, grab a deck of cards.\nAsk your spectator to shuffle them and to give you back any 5 playing cards.\nPlace a card face down(this is the prediction we will use later) and the rest of them face up.\nNow tell me the cards you placed down by selecting them in the below spots.")
                .padding()
                .font(.system(size: 16, weight: .black))
            HStack {
                Text("This will be the secret card")
                    .padding()
                    .frame(width: 94, height: 132)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .stroke(Color.blue, style: StrokeStyle())
                            
                    )
                Spacer()
                    .frame(maxWidth: 30, maxHeight: 50)
                
                Text("Tap to add a card")
                    .padding()
                    .frame(width: 94, height: 132)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .stroke(Color.blue, style: StrokeStyle())
                            
                    )
            
            }
            .padding()
            
            HStack {
                Text("Tap to add a card")
                    .padding()
                    .frame(width: 94, height: 132)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .stroke(Color.blue, style: StrokeStyle())
                            
                    )
                Spacer()
                    .frame(maxWidth: 30, maxHeight: 50)
                Text("Tap to add a card")
                    .padding()
                    .frame(width: 94, height: 132)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .stroke(Color.blue, style: StrokeStyle())
                            
                    )
                Spacer()
                    .frame(maxWidth: 30, maxHeight: 50)
                
                Text("Tap to add a card")
                    .padding()
                    .frame(width: 94, height: 132)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .stroke(Color.blue, style: StrokeStyle())
                            
                    )
            
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
