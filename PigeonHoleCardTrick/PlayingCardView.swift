//
//  PlayingCardView.swift
//  PigeonHoleCardTrick
//
//  Created by Bogdan on 3/9/21.
//

import SwiftUI

struct PlayingCardView: View {
    var cardValue: Int = 0
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .frame(width: 63, height: 88)
                .foregroundColor(Color(.systemGray3))
            Text("5D")
                .font(.system(size: 24, weight: .bold))
        }
    }
}

struct PlayingCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingCardView()
    }
}
