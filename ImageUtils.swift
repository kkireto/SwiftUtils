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

class ImageUtils: NSObject {
    
    class func checkImage(image: UIImage, ratioSize: CGSize) -> UIImage {
        var retValue = image
        var imageSize = image.size
        if imageSize.height*ratioSize.width > imageSize.width*ratioSize.height {
            imageSize.height = (imageSize.width * ratioSize.height)/ratioSize.width
            var cropRect = CGRectMake(0.0, 0.0, imageSize.width*image.scale, imageSize.height*image.scale)
            var croppedImage = CGImageCreateWithImageInRect(image.CGImage, cropRect)
            retValue = UIImage(CGImage: croppedImage)!
        }
        else {
            imageSize.width = (imageSize.height * ratioSize.width)/ratioSize.height;
            var cropRect = CGRectMake(((image.size.width - imageSize.width)/2)*image.scale, 0.0, imageSize.width*image.scale, imageSize.height*image.scale)
            var croppedImage = CGImageCreateWithImageInRect(image.CGImage, cropRect)
            retValue = UIImage(CGImage: croppedImage)!
        }
        return retValue
    }
    
    class func checkImage(image: UIImage) -> UIImage {
        var retValue = image
        var imageSize = image.size
        if imageSize.height*16 > imageSize.width*10 {
            imageSize.height = (imageSize.width * 10)/16
            var cropRect = CGRectMake(0.0, 0.0, imageSize.width*image.scale, imageSize.height*image.scale)
            var croppedImage = CGImageCreateWithImageInRect(image.CGImage, cropRect)
            retValue = UIImage(CGImage: croppedImage)!
        }
        else {
            imageSize.width = (imageSize.height * 16)/10;
            var cropRect = CGRectMake(((image.size.width - imageSize.width)/2)*image.scale, 0.0, imageSize.width*image.scale, imageSize.height*image.scale)
            var croppedImage = CGImageCreateWithImageInRect(image.CGImage, cropRect)
            retValue = UIImage(CGImage: croppedImage)!
        }
        return retValue
    }
}
