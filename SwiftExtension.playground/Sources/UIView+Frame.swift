import UIKit

public extension UIView {
    func updateFrame(offsetX: CGFloat) {
        var newFrame = frame
        newFrame.origin.x += offsetX
        frame = newFrame
    }
    
    func updateFrame(offsetY: CGFloat) {
        var newFrame = frame
        newFrame.origin.y += offsetY
        frame = newFrame
    }
    
    func updateFrame(newX: CGFloat) {
        var newFrame = frame
        newFrame.origin.x = newX
        frame = newFrame
    }
    
    func updateFrame(newY: CGFloat) {
        var newFrame = frame
        newFrame.origin.y = newY
        frame = newFrame
    }
    
    func updateFrame(newHeight: CGFloat) {
        var newFrame = frame
        newFrame.size.height = newHeight
        frame = newFrame
    }
    
    func updateFrame(newWidth: CGFloat)  {
        var newFrame = frame
        newFrame.size.width = newWidth
        frame = newFrame
    }
    
    func updateFrame(newOrigin: CGPoint) {
        var newFrame = frame
        newFrame.origin = newOrigin
        frame = newFrame
    }
    
    func updateFrame(newSize: CGSize) {
        var newFrame = frame
        newFrame.size = newSize
        frame = newFrame
    }
    
    func centerInParent() {
        guard let parent = self.superview else {
            return
        }
        
        self.frame = CGRect(x: (parent.frame.width - frame.width) / 2,
                            y: (parent.frame.height - frame.height) / 2,
                            width: frame.width,
                            height: frame.height)
        
        
    }
}
