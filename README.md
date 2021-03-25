# CurvedTabbar
A demo written in swift to produce CURVED tabbar item in center.
## HOW TO USE
  Drag and drop CustomTabBarController.swift and CustomizedTabBar.swift file in your project.
  If you are using storyboard then set Tabbar class to 'CustomizedTabBar' 
<img width="380" alt="Screen Shot 2021-03-25 at 10 49 56 PM" src="https://user-images.githubusercontent.com/2304583/112542087-d614fd80-8dbc-11eb-94c9-df0166793299.png">
  
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
<img width="431" alt="Screen Shot 2021-03-25 at 10 45 02 PM" src="https://user-images.githubusercontent.com/2304583/112542079-d2817680-8dbc-11eb-88e8-74699639b98a.png">
