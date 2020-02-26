//
//  _Gameboard.swift
//  GameKit
//
//  Created by Elizabeth Chiappini on 2/25/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI

struct Flower {
    static var names = [
        "marigold",
        "poppy",
        "violet",
    ]
    
    static func randomFlowerName() -> String {
        let index = Int.random(in: 0..<Flower.names.count)
        return names[index]
    }
    
    static func randomFlowerSize() -> CGFloat {
        return CGFloat.random(in: 1.0...1.5)
    }
    
    var id: String = UUID().uuidString
    
    // Automatically assign these
    var name: String = Flower.randomFlowerName()
    var size: CGFloat = Flower.randomFlowerSize()
    
    // Assign this later
    var position: CGPoint
}


struct  _GameBoard: View {
    var numFlowers = 100
    @Binding var avatarPosition: CGPoint
    @State var flowers: [Flower] = []
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(self.flowers, id: \Flower.id) { flower in
                    CollisionObject(position: flower.position,
                                    avatarPosition: self.avatarPosition,
                                    imgUrl: flower.name,
                                    size: flower.size * 55.0)
                        
                        .frame(width: 55.0 * flower.size, height: 55.0 * flower.size)
                        .position(flower.position)
                }
                
                // Place avatar
                Avatar(position: self.$avatarPosition)
            }.onAppear() {
                
                self.flowers = Array(0..<self.numFlowers).map { index in
                    let width = geometry.size.width
                    let height = geometry.size.height
                    let x = CGFloat.random(in: 0...width)
                    let y = CGFloat.random(in: 0...height)
                    let position = CGPoint(x: x, y: y)
                    return Flower(position: position)
                }
                print(self.flowers)
            }
        }
    }
}


//struct GameBoard_Previews: PreviewProvider {
//    static var previews: some View {
//        GeometryReader { geometry in
//            GameBoard(geometry: geometry, avatarPosition: self.avatarPosition)
//        }
//    }
//}

