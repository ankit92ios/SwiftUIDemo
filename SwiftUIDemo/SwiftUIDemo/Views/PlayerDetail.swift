//
//  PlayerDetails.swift
//  FirstSwiftUI
//
//  Created by ankit ios on 11/07/21.
//

import SwiftUI

struct PlayerDetail: View {
    var name : String
    var headline : String
    var bio : String
    var body: some View {
        VStack(alignment: .center ,content: {
            Image(name)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.red,lineWidth: 5))
                .shadow(radius: 10)
            Text(name)
                .font(.title)
            Text(headline)
                .font(.subheadline)
            Divider()
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(50)
            
        }).padding()
       
    }
}

struct PlayerDetails_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(name: "Rafael Nadal", headline: "Switzerland", bio: "Spanish professional tennis player currently ranked world No. 1 in men's singles tennis by the Association of Tennis Professionals (ATP). Nadal has won 19 Grand Slam singles titles, the second-most in history for a male player, as well as a record 35 ATP Tour Masters 1000 titles, 20 ATP Tour 500 titles, and the 2008 Olympic gold medal in singles. In addition, Nadal has held the world No. 1 ranking for a total of 198 weeks, including being the year-end No. 1 five times.")
    }
}
