//
//  String+Utils.swift
//  HiIOS
//
//  Created by 杨建祥 on 2024/5/16.
//

import UIKit

public extension String {
    
    var imageSource: ImageSource? {
        if self.hasPrefix("http") {
            return self.url
        }
        return UIImage.init(named: self)
    }
        
    init<Subject>(fullname subject: Subject) {
        self.init(reflecting: subject)
        if let displayName = UIApplication.shared.displayName {
            self = self.replacingOccurrences(of: "\(displayName).", with: "")
        }
        self = self.replacingOccurrences(of: UIApplication.shared.bundleName + ".", with: "")
        self = self.replacingOccurrences(of: "HiUtils.", with: "")
    }

}
