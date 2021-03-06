//
//  TestCoordinatorType.swift
//  PixelTest
//
//  Created by Kane Cheshire on 25/04/2018.
//

import Foundation

protocol TestCoordinatorType {
    
    func record(_ imageable: Imageable,
                layoutStyle: LayoutStyle,
                scale: Scale,
                relativeDirectory: String,
                filenameSuffix: String,
                function: StaticString,
                file: StaticString) -> Result<UIImage, String>
    
    func test(_ imageable: Imageable,
              layoutStyle: LayoutStyle,
              scale: Scale,
              relativeDirectory: String,
              filenameSuffix: String,
              function: StaticString,
              file: StaticString) -> Result<UIImage, (oracle: UIImage?, test: UIImage?, message: String)>
}
