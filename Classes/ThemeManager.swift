//
//  Theme.swift
//  ProjectPhoenix
//
//  Created by Jeanette Müller on 04.11.16.
//  Copyright © 2016 Jeanette Müller. All rights reserved.
//

import UIKit

public let SelectedThemeKey = "SelectedTheme"

public class ThemeManager {
    
    public static let shared: ThemeManager = {
        
        let instance = ThemeManager()
        
        return instance
    }()
    
    public var theme: ThemeProtocol? {
        didSet {
            
        }
    }
    
    public static func currentTheme() -> ThemeProtocol {
        
        return ThemeManager.shared.currentTheme()
        
        
    }
    func currentTheme() -> ThemeProtocol {
        return theme!
//        UserDefaults.standard.value(forKeyPath: SelectedThemeKey)
//        if let storedTheme = (UserDefaults.standard.value(forKey: SelectedThemeKey) as AnyObject).integerValue, let t = Theme(rawValue: storedTheme) {
//            return t
//        } else {
//
//            return .Default
//        }
    }
    
    static var displayMin: CGFloat {
        return min(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
    }
    static var displayMax: CGFloat {
        get {
            max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
        }
    }
    
    static func getSizes(_ middle: CGFloat? = nil, _ small: CGFloat? = nil, _ mini: CGFloat? = nil, andTablet tablet: CGFloat? = nil) -> CGFloat {
        
        if ThemeManager.shouldActAsTablet(), let t = tablet {
            return t
        }
        
        var values = [CGFloat]()
        
        if let m = middle {
            
            values.append(m)
        }
        if let s = small {
            
            values.append(s)
        }
        if let m = mini {
            
            values.append(m)
        }
        
        values.reverse()
        
        if displayMin > 375, values.count > 2 {
            let middle = values[2]
            return middle
        }
        if displayMin > 320, values.count > 1 {
            let small = values[1]
            return small
        }
        
        if let minimum = values.first {
            return minimum
        }
        return 0
    }
    
    @available(iOS 2.0, *)
    static func shouldActAsTablet() -> Bool {
        var maxSize: CGFloat = 0
        if Thread.isMainThread {
            maxSize = max(UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
        }
        
        if UIDevice.current.userInterfaceIdiom == .pad && maxSize == 1024 {
            return true
        }
        return false
    }
}
