//
//  Theme.swift
//  JxThemeManager
//
//  Created by Jeanette Müller on 03.11.20.
//

import UIKit


public protocol ThemeProtocol {
    
    var rawValue: Int {get}

    var name: String {get}
    var readableName: String {get}
    var cssFileName: String {get}
    var iconName: String? {get}
    var appIcon: UIImage {get}
    
    // MARK: - Fonts
    var fontUltraLight: String {get}
    var fontLight: String {get}
    var fontRegular: String {get}
    var fontMedium: String {get}
    var fontBold: String {get}
    
    var fontSizeLargeTitle: CGFloat {get}
    var fontSizeTitle: CGFloat {get}
    var fontSizeContenTitle: CGFloat {get}
    var fontSizeContentLarge: CGFloat  {get}
    var fontSizeContentMedium: CGFloat  {get}
    var fontSizeContentSmall: CGFloat  {get}
    
    // MARK: - Colors
    var backgroundColor: UIColor  {get}
    var contentBackgroundColor: UIColor {get}
    
    var titleTextColor: UIColor  {get}
    var subtitleTextColor: UIColor  {get}
    
    var color: UIColor {get}
    var highlight: UIColor {get}
    var highlightTextColor: UIColor {get}
    var warnColor: UIColor {get}
    var errorColor: UIColor {get}
    var shadowColor: UIColor {get}
    var shadowHighlightColor: UIColor {get}
    
    var actionButtonsColor: UIColor  {get}
    var textFieldBackground: UIColor {get}
    var textFieldPlaceholderTextColor: UIColor  {get}
    
    var tableViewHeadlineBackgroundColor: UIColor  {get}
    var tableViewSeparatorColor: UIColor  {get}
    var tableBackgroundColor: UIColor {get }
    
    var tabBarBackgroundImage: UIImage? {get}
    var tabBarBackgroundColor: UIColor {get}
    var tabBarIconColor: UIColor {get}
    
    // MARK: - Alpha
    var imageAlpha: CGFloat  {get}
    var headerBackgroundAlphaPerPixel: CGFloat  {get}
    
    // MARK: - Sizes
    var cornerRadiusPercent: CGFloat  {get}
    var contentInsetFromDisplayBorder: CGFloat  {get}
    
    var tableViewHeadlineHeight: CGFloat  {get}
    
    var minimalBorderWidth: CGFloat  {get}
    
    // MARK: - Images
    var backgroundImage: UIImage  {get}
    var navigationBackgroundImage: UIImage? {get}
    var fallbackImageName: String {get}
    var fallbackImage: UIImage  {get}
    
    // MARK: - System
    var statusbarStyle: UIStatusBarStyle  {get}
    var barStyle: UIBarStyle {get}
    var artworkContentMode: UIView.ContentMode  {get}
    var artworkLargeContentMode: UIView.ContentMode  {get}
    var isLight: Bool {get}
    var keyboardStyle: UIKeyboardAppearance {get}
}
/*
public enum Theme: ThemeProtocol {
    
    public var name: String {
        return "DEFAULT"
    }
    public var readableName: String {
        return "Default"
    }
        
    public var cssFileName: String {
        return "default"
    }
    
    // MARK: - Fonts
    public var fontUltraLight: String {
        return "HelveticaNeue-Ultralight"
    }
    public var fontLight: String {
        return "HelveticaNeue-Light"
    }
    public var fontRegular: String {
        return "HelveticaNeue"
    }
    public var fontMedium: String {
        return "HelveticaNeue-Medium"
    }
    public var fontBold: String {
        return "HelveticaNeue-Bold"
    }
    
    
    public var fontSizeLargeTitle: CGFloat {
        return getSizes(26, 22, 19)
    }
    public var fontSizeTitle: CGFloat {
        return getSizes(24, 22, 20)
    }
    public var fontSizeContenTitle: CGFloat {
        return getSizes(16, 14, 12)
    }
    public var fontSizeContentLarge: CGFloat {
        return getSizes(14, 12, 10)
    }
    public var fontSizeContentMedium: CGFloat {
        return getSizes(12, 10, 8)
    }
    public var fontSizeContentSmall: CGFloat {
        return getSizes(10, 9, 8)
    }
    
    // MARK: - Colors
    public var backgroundColor: UIColor {
        return UIColor.white
       
    }
    
    
    public var titleTextColor: UIColor {
        return .black
    }
    public var subtitleTextColor: UIColor {
        return .darkGray
    }
    
    public var color: UIColor {
        return UIColor.orange
    }
    
    public var actionButtonsColor: UIColor {
        return .white
    }
    
    
    public var tableViewHeadlineBackgroundColor: UIColor {
        return .lightGray
    }
    public var textFieldPlaceholderTextColor: UIColor {
        return .lightGray
    }
    public var tableViewSeparatorColor: UIColor {
        return .lightGray
    }
    
    // MARK: - Alpha
    public var imageAlpha: CGFloat {
        return 1.0
    }
    public var headerBackgroundAlphaPerPixel: CGFloat {
        return 0
    }
    // MARK: - Sizes
    public var cornerRadiusPercent: CGFloat {
        return 0
    }
    public var contentInsetFromDisplayBorder: CGFloat {
        return 10
    }
    
    public var tableViewHeadlineHeight: CGFloat {
        return 40
    }
    
    public var minimalBorderWidth: CGFloat {
        return 1
    }
    
    // MARK: - Images
    public var backgroundImage: UIImage {
        return UIImage()
    }
    public var fallbackImage: UIImage {
        return UIImage()
    }
    
    // MARK: - System
    public var statusbarStyle: UIStatusBarStyle {
        return .default
    }
    #if os(iOS)
    public var artworkContentMode: UIView.ContentMode {
        return UIView.ContentMode.scaleAspectFill
    }
    public var artworkLargeContentMode: UIView.ContentMode {
        return UIView.ContentMode.scaleAspectFit
    }
    #endif
    
    
    // MARK - Others
    func getSizes(_ middle: CGFloat? = nil, _ small: CGFloat? = nil, _ mini: CGFloat? = nil, andTablet tablet: CGFloat? = nil) -> CGFloat {
        return ThemeManager.getSizes(middle, small, mini, andTablet: tablet)
    }
}

*/
