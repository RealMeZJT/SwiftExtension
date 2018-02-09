import UIKit
public extension CGPoint {
    var px_x: Int {
        return Int(self.x * UIScreen.main.scale)
    }
    
    var px_y: Int {
        return Int(self.y *  UIScreen.main.scale)
    }
}
