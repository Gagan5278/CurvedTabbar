# CurvedTabbar
A demo written in swift to produce CURVED tabbar item in center.
## HOW TO USE
  Drag and drop CustomTabBarController.swift and CustomizedTabBar.swift file in your project.
  If you are using storyboard then set Tabbar class to 'CustomizedTabBar' 
  
  
  If you dont have Storyboard then add below code in your UITabBarController's subclass.
  ```
           let tabBar = { () -> CustomizedTabBar in
                 let tabBar = CustomizedTabBar()
                 tabBar.delegate = self
                 return tabBar
             }()
         self.setValue(tabBar, forKey: "tabBar")
   ```
 
 ## Screenshot
