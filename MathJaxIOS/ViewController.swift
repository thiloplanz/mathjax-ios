/************************************************************************
*
*  Copyright (c) 2015 Thilo Planz
*  Copyright (c) 2011 Harish Narayanan
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*************************************************************************/


import UIKit

class ViewController: UIViewController {
    
    func loadMathJaxDemo(sender: UIButton){
        NSLog("Standard demo loaded");
        
        let htmlView = UIWebView(frame: self.view.frame);
        let path = NSBundle.mainBundle().pathForResource("sample", ofType: "html", inDirectory: "MathJax/test")
        htmlView.loadRequest(NSURLRequest(URL: NSURL(fileURLWithPath:path!)!));
        htmlView.scalesPageToFit = true;
        htmlView.autoresizingMask = .FlexibleHeight | .FlexibleWidth
        
        self.view.autoresizesSubviews = true;
        
        self.view.addSubview(htmlView);
    }
    
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    // http://stackoverflow.com/questions/27525657/ios-8-upside-down-orientation-xcode-option-enabled-still-doesnt-work
    override func supportedInterfaceOrientations() -> Int{
        return Int(UIInterfaceOrientationMask.All.rawValue)
    }

}
