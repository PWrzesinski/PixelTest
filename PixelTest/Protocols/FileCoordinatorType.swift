//
//  FileCoordinatorType.swift
//  PixelTest
//
//  Created by Kane Cheshire on 24/04/2018.
//

import Foundation
import UIKit

protocol FileCoordinatorType {
    
    func fileURL(for function: StaticString,
                 file: StaticString,
                 filenameSuffix: String,
                 scale: Scale,
                 relativeDirectory: String,
                 imageType: ImageType,
                 layoutStyle: LayoutStyle) -> URL
    
    func imageExists(for function: StaticString,
                     file: StaticString,
                     filenameSuffix: String,
                     scale: Scale,
                     relativeDirectory: String,
                     imageType: ImageType,
                     layoutStyle: LayoutStyle) -> Bool
    
    func write(_ data: Data, to url: URL) throws
    
    func data(at url: URL) throws -> Data
    
    func storeDiffImage(_ diffImage: UIImage,
                        failedImage: UIImage,
                        function: StaticString,
                        file: StaticString,
                        filenameSuffix: String,
                        scale: Scale,
                        relativeDirectory: String,
                        layoutStyle: LayoutStyle)
    
    func removeDiffAndFailureImages(function: StaticString,
                                    file: StaticString,
                                    filenameSuffix: String,
                                    scale: Scale,
                                    relativeDirectory: String,
                                    layoutStyle: LayoutStyle)
    
}
