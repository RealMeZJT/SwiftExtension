

public extension Array {
    public mutating func move(at index: Int, offset: Int) -> [Element] {
        return move(at: index,lenght: 1, offset: offset)
    }
    
    
    /// 移动多个元素
    /// 比如有数组["a","b","c","d"],move(at:0, lenght:2: offset: 1)
    /// 结果是 ["c","a","b","d"].
    /// 数组["a","b","c","d"], move(at:0, lenght:2: offset: 2)
    /// 结果是 ["c","d","a","b"]
    /// - Parameters:
    ///   - index: 起始索引
    ///   - lenght: 长度
    ///   - offset: 偏移量
    /// - Returns: 被移动的数值
    public mutating func move(at index: Int,lenght: Int, offset: Int) -> [Element] {
        
        if lenght >= count {
            //TODO: warning
            return []
        }
        
        var elements = Array<Element>()
        for _ in 0..<lenght {
            let movedElement = remove(at: index)
            elements.append(movedElement)
        }
        //注意，此时数组已经变短了(lenght)。
        
        
        var insertIndex = index + offset
        
        insertIndex = Swift.min(count,Swift.max(0, insertIndex))
        insert(contentsOf: elements, at: insertIndex)
        return elements
    }
    
    /// 交换元素段的位置。xArrIndexs、yArrIndexs里面的索引必须是连贯的，
    /// 且xArrIndexs和yArrIndexs必须是没有交集的。
    ///
    /// - Parameters:
    ///   - xArrIndexs: 需要交换位置的元素的索引
    ///   - yArrIndexs:  需要交换位置的元素的索引
    mutating func swap(xArrIndexs: [Int], yArrIndexs: [Int]) {
        
        var xIndexs: [Int]!
        var yIndexs: [Int]!
        if xArrIndexs.first! < yArrIndexs.first! {
            xIndexs = xArrIndexs
            yIndexs = yArrIndexs
        } else {
            xIndexs = yArrIndexs
            yIndexs = xArrIndexs
        }
        
        let distand = Swift.abs(xIndexs.last! - yIndexs.first!) - 1
        let firstMoveOffset = distand
        move(at: xIndexs.first!, lenght: xIndexs.count, offset: firstMoveOffset)
        
        //现在 xIndexs元素已经插到yIndexs元素前面了,
        //但是注意！此时yIndexs元素的索引是没有受到影响的。
        
        let secondMoveOffset = -(xIndexs.count + distand)
        move(at: yIndexs.first!, lenght: yIndexs.count, offset: secondMoveOffset)
        
    }
    
}
