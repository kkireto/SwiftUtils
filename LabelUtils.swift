//The MIT License (MIT)
//
//Copyright (c) 2014 Kireto
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of
//this software and associated documentation files (the "Software"), to deal in
//the Software without restriction, including without limitation the rights to
//use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//the Software, and to permit persons to whom the Software is furnished to do so,
//subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import UIKit

class LabelUtils: NSObject {
    
    class func label(frame: CGRect, font: UIFont, color: UIColor, alignment: NSTextAlignment, text: NSString) -> UILabel {
        var retValue = UILabel (frame: frame)
        retValue.backgroundColor = UIColor.clearColor()
        retValue.font = font
        retValue.textColor = color
        retValue.textAlignment = alignment
        retValue.text = text
        return retValue
    }
    class func label(frame: CGRect, numberOfLines: Int, font: UIFont, color: UIColor, alignment: NSTextAlignment, text: NSString) -> UILabel {
        var retValue = UILabel (frame: frame)
        retValue.backgroundColor = UIColor.clearColor()
        retValue.numberOfLines = numberOfLines
        retValue.font = font
        retValue.textColor = color
        retValue.textAlignment = alignment
        retValue.text = text
        return retValue
    }
    class func label(frame: CGRect, font: UIFont, color: UIColor, alignment: NSTextAlignment, text: NSString, shadowColor: UIColor, shadowOffset: CGSize) -> UILabel {
        var retValue = LabelUtils.label(frame, font: font, color: color, alignment: alignment, text: text)
        retValue.shadowColor = shadowColor
        retValue.shadowOffset = shadowOffset
        return retValue
    }
    class func textSize (text: NSString, font: UIFont) -> CGSize {
        var attributes = NSDictionary(object: font, forKey: NSFontAttributeName)
        return text.sizeWithAttributes(attributes)
    }
    class func textSize (text: NSString, font: UIFont, lineBreakMode: NSLineBreakMode, initialSize: CGSize) -> CGSize {
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = lineBreakMode
        var attributes = NSDictionary(objectsAndKeys:
            font, NSFontAttributeName,
        paragraphStyle.copy(), NSParagraphStyleAttributeName)
        var textRect = text.boundingRectWithSize(initialSize,
            options: NSStringDrawingOptions.UsesLineFragmentOrigin,
            attributes: attributes,
            context: nil)
        return textRect.size
    }
}
