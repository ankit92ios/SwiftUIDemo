//
//  PlayerList.swift
//  FirstSwiftUI
//
//  Created by ankit ios on 11/07/21.
//

import SwiftUI

struct PlayerList: View {
    var players : [Player] = []
    var body: some View {
        NavigationView(content: {
            List(players){ player in
                PlayerCell.init(player: player)
            }.navigationBarTitle("ATC Players")
        })
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList(players: testData)
    }
}

struct PlayerCell : View{
    let player : Player
    var body: some View{
        NavigationLink( destination: PlayerDetail.init(name: player.name, headline: player.headline, bio: player.bio)) {
            Image(player.imageName)
                .cornerRadius(40.0)
                
            VStack.init(alignment: .leading, content: {
                Text(player.name)
                Text(player.headline)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            })
        }
    }
}
