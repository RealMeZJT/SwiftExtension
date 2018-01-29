

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
    
}
