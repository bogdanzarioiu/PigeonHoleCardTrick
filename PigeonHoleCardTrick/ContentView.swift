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
    
    
    @State var card1Value = ""
    @State var card2Value = ""
    @State var card3Value = ""
    @State var card4Value = ""
    @State var card5Value = ""
    
    @State var card1Suit = ""
    @State var card2Suit = ""
    @State var card3Suit = ""
    @State var card4Suit = ""
    @State var card5Suit = ""
    
    @State private var isSheetOn = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Text("Do you want to see a cool thing???\nOk, grab a deck of cards.\nAsk your spectator to shuffle them and to give you back any 5 playing cards.\nPlace a card face down(this is the prediction we will use later) and the rest of them face up.\nNow tell me the cards you placed down by selecting them in the below spots.")
                .padding()
                .font(.system(size: 20, weight: .black))
            
            HStack {
                Text("This will be the secret card")
                    .padding()
                    .frame(width: 94, height: 132)
                    .font(.footnote)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .stroke(Color.blue, style: StrokeStyle())
                            
                    )
                Spacer()
                    .frame(maxWidth: 30, maxHeight: 50)
                
                Button(action: {
                    self.isSheetOn.toggle()
                }, label: {
                    Text("Card 2")
                        .padding()
                        .frame(width: 94, height: 132)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .stroke(Color.blue, style: StrokeStyle())
                                
                        )
                })
                
            
            }
            .padding()
             
            
            HStack {
                Button(action: {
                    self.isSheetOn.toggle()
                }, label: {
                    Text("Card 3")
                        .padding()
                        .frame(width: 94, height: 132)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .stroke(Color.blue, style: StrokeStyle())
                                
                        )
                })
                
                Spacer()
                    .frame(maxWidth: 30, maxHeight: 50)
                Button(action: {
                    self.isSheetOn.toggle()
//                    self.selectedValue = ""
//                    self.selectedSuit = 0
                }, label: {
                    Text("Card 4")
                        .padding()
                        .frame(width: 94, height: 132)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .stroke(Color.blue, style: StrokeStyle())
                                
                        )
                        
                    
                })
                
                
                Spacer()
                    .frame(maxWidth: 30, maxHeight: 50)
                
                Button(action: {
                    self.isSheetOn.toggle()
                }, label: {
                    Text("Card 5")
                        .padding()
                        .frame(width: 94, height: 132)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .stroke(Color.blue, style: StrokeStyle())
                                
                        )
                })
                
            
            }
            .padding()
        }
       
        .sheet(isPresented: $isSheetOn, content: {
            Text("Will be fixed later")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
