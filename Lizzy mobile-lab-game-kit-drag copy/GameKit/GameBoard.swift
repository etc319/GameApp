////
////  GameBoard.swift
////  GameKit
////
////  Created by Nien Lam on 2/20/20.
////  Copyright © 2020 Mobile Lab. All rights reserved.
////
//
//import SwiftUI
//
//struct GameBoard: View {
//    var numFlowers = 10
//    var geometry: GeometryProxy
//    @Binding var avatarPosition: CGPoint
////    @State var avatarPosition = CGPoint(x: 0, y: 0)
//
//    @State var positions: [CGPoint] = []
//
//
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack {
//
////                ForEach((0..<5).indices) { rowIndex in
////                    CollisionObject(position: CGPoint(
////                        x: CGFloat.random(in: 1..<self.geometry.size.width),
////                        y: CGFloat.random(in: 1..<self.geometry.size.height)),
////                                    avatarPosition: self.avatarPosition)
////                }
//                ForEach((0..<4).indices) { rowIndex in
//                    CollisionObject(position: CGPoint(
//                        x: self.positions[rowIndex][0],
//                        y: self.positions[rowIndex][1]),
//                                    avatarPosition: self.avatarPosition,
//                                    imgUrl: "marigold")
//                }
//                ForEach((4..<7).indices) { rowIndex in
//                    CollisionObject(position: CGPoint(
//                        x: self.positions[rowIndex][0],
//                        y: self.positions[rowIndex][1]),
//                                    avatarPosition: self.avatarPosition,
//                                    imgUrl: "poppy")
//                }
//                ForEach((7..<10).indices) { rowIndex in
//                    CollisionObject(position: CGPoint(
//                        x: self.positions[rowIndex][0],
//                        y: self.positions[rowIndex][1]),
//                                    avatarPosition: self.avatarPosition,
//                                    imgUrl: "violet")
//                }
//
//                // Place collision objects.
////                CollisionObject(position: CGPoint(x: 80, y: 80), avatarPosition: self.avatarPosition)
//
//                // Place avatar.
//                Avatar(position: self.$avatarPosition)
//            }
//            .onAppear() {
//                // Initialize position to center of the screen.
////                self.avatarPosition = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
//
//                // Generate random numbers
////                ForEach((0..<5).indices) { rowIndex in
////                    positions[rowIndex] = [
////                        CGFloat.random(in: 1..<self.geometry.size.width),
////                        CGFloat.random(in: 1..<self.geometry.size.height)
////                    ]
////                }
//                for n in 0...9 {
//                    self.positions[n] = [
//                        CGFloat.random(in: 1..<self.geometry.size.width),
//                        CGFloat.random(in: 1..<self.geometry.size.height)
//                    ]
//                }
//
//                print(self.positions)
//            }
//            .border(Color.blue, width: 6.0)
//        }
//    }
//}
//
////struct GameBoard_Previews: PreviewProvider {
////    static var previews: some View {
////        GeometryReader { geometry in
////            GameBoard(geometry: geometry, avatarPosition: self.avatarPosition)
////        }
////    }
////}
