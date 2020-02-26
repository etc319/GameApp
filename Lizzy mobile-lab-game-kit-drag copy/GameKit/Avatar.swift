//
//  Avatar.swift
//  GameKit
//
//  Created by Nien Lam on 2/20/20.
//  Copyright © 2020 Mobile Lab. All rights reserved.
//

import SwiftUI

struct Avatar: View {
    @Binding var position: CGPoint
    
    // A variable that keeps the current location before dragging starts.
    @State var offsetBeforeStartOfDrag = CGPoint()
    
    var body: some View {
        // Setup drag gesture. Will update binding position.
        let drag = DragGesture(minimumDistance: 0.0, coordinateSpace: CoordinateSpace.global)
            .onChanged { gesture in
                // Update position on drag.
                self.position = CGPoint(x: self.offsetBeforeStartOfDrag.x + gesture.translation.width,
                                        y: self.offsetBeforeStartOfDrag.y + gesture.translation.height)
            }
            .onEnded { gesture in
                // Remember offset when touch ended.
                self.offsetBeforeStartOfDrag = self.position
            }
        
        return ZStack {
            Path { path in
                path.move(to: CGPoint(x: 25, y: 0))
                path.addLine(to: CGPoint(x: 50, y: 50))
                path.addLine(to: CGPoint(x: 0, y: 50))
            }
            .fill(Color.green)
            
            Circle()
                .fill(Color.black)
                .frame(width: 10.0, height: 10.0)
        }
        .frame(width: 50, height: 50)
        .position(position)
        .animation(.easeInOut(duration: 0.2))
        .gesture(drag)
        .onAppear() {
            // Initialize offset on appear.
            self.offsetBeforeStartOfDrag = self.position
        }
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            Avatar(position: .constant(CGPoint(x: geometry.size.width / 2, y:  geometry.size.height / 2)))
        }
    }
}
