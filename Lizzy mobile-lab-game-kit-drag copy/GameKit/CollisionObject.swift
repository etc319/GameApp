//
//  CollisionObject.swift
//  GameKit
//
//  Created by Nien Lam on 2/20/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI

struct CollisionObject: View {
    
    var position: CGPoint
    var avatarPosition: CGPoint
    var imgUrl: String
    // @State var avatarToggle: Bool = false
    
    let size: CGFloat
    
//    // Logic to check if avatar is inside the collision object.
//    func setAvatarInside() -> Void {
//        if (position.x != 0 && position.y != 0) {
//                    let currState = (position.x - size / 2.0) < avatarPosition.x && avatarPosition.x < (position.x + size / 2.0) &&
//                    (position.y - size / 2.0) < avatarPosition.y && avatarPosition.y < (position.y + size / 2.0)
//                    print(imgUrl)
//                    print(currState)
//                    if (!self.avatarToggle && currState) {
//                        self.avatarToggle = true
//                    }
//            //        else {
//            //                if (avatarToggle == true) {
//            //                    self.avatarToggle = false
//            //                }
//            //            }
//                    print(self.avatarToggle)
//            //        return self.avatarToggle
//        }
//    }
    
    // Logic to check if avatar is inside the collision object.
       func isAvatarInside() -> Bool {
           if (position.x - size / 2.0) < avatarPosition.x && avatarPosition.x < (position.x + size / 2.0) &&
               (position.y - size / 2.0) < avatarPosition.y && avatarPosition.y < (position.y + size / 2.0) {
                   return true
               } else {
                   return false
               }
           }
    
        
        var body: some View {
//            DispatchQueue.main.async {
//                self.setAvatarInside()
//            }
            
            return ZStack {
           //     Rectangle()
                Image(imgUrl)
                    .resizable()
                               // .frame(width: 55, height: 55)
                    .opacity(isAvatarInside() ? 1.0 : 0.50)
            }
            // .position(position)
        }
    
    }
//
//    struct CollisionObject_Previews: PreviewProvider {
//        static var previews: some View {
//            GeometryReader { geometry in
//                CollisionObject(position: CGPoint(x: geometry.size.width / 2, y:  geometry.size.height / 2), avatarPosition: CGPoint(x: 0, y: 0), imgUrl: "poppy")
//            }
//        }
//}
