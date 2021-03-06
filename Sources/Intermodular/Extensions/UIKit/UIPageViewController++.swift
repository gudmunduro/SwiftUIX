//
// Copyright (c) Vatsal Manot
//

#if os(iOS) || os(tvOS) || targetEnvironment(macCatalyst)

import Swift
import UIKit

extension UIPageViewController {
    var isPanGestureEnabled: Bool {
        get {
            gestureRecognizers.compactMap({ $0 as? UIPanGestureRecognizer }).first?.isEnabled ?? true
        } set {
            gestureRecognizers.compactMap({ $0 as? UIPanGestureRecognizer }).first?.isEnabled = newValue
        }
    }
    
    var isScrollEnabled: Bool {
        get {
            view.subviews.compactMap({ $0 as? UIScrollView }).first?.isScrollEnabled ?? true
        } set {
            view.subviews.compactMap({ $0 as? UIScrollView }).first?.isScrollEnabled = newValue
        }
    }
    
    var pageControl: UIPageControl? {
        view.findSubview(ofKind: UIPageControl.self)
    }
}

#endif
