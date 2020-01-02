//
//  ImageDownloader.swift
//  TestApplication
//
//  Created by Tharindu Ketipearachchi on 10/20/19.
//  Copyright © 2019 Tharindu Ketipearachchi. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireImage

class ImageDownloader {
    
    static let shared = ImageDownloader()
    
    let imageCache = AutoPurgingImageCache(
        memoryCapacity: UInt64(100).megabytes(),
        preferredMemoryUsageAfterPurge: UInt64(60).megabytes()
    )
    
    func cache(_ image: Image, for url: String) {
        imageCache.add(image, withIdentifier: url)
    }
    
    func cachedImage(for url: String) -> Image? {
        return imageCache.image(withIdentifier: url)
    }
    
    func loadImage(url:String, imageView:UIImageView) {
        if let image = self.cachedImage(for: url) {
            imageView.image = image
            return
        }
        downloadImage(url: url, imageView: imageView)
    }
    
    func downloadImage(url:String, imageView:UIImageView) {
        Alamofire.request(url).responseImage { response in
            if let data = response.data {
                if let image = UIImage(data: data, scale: 1.0) {
                    self.imageCache.add(image, withIdentifier: url)
                    imageView.image = image
                }
            }
        }
    }
}
