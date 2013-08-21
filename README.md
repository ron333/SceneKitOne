
Applications that use SceneKit need to have a SCNView object.  Below, I outline some of the ways to do that.  For complete information refer to the source code.

Method One

Jeff LaMarche has terrific SceneKit example code at: https://github.com/jlamarche/SceneKitFun  He took the following approach: 
Create a class that is a subview of SCNView.  
In the xib editor, add a Scene View object and set its class to the class you created in 1. 
Your SceneKit code appears in the -(void)awakeFromNib method which is in the class you created in 1.

Method Two

Stijn Oomes has a nice example of dancing shapes using Scene Kit at: 
http://www.solid-perspective-vision.com/display-dancing-shapes-with-scene-kit.html  What he did is: 
Create a class that is a subview of NSViewController. 
In the xib editor add a View Controller object and set its class to the class you created in 1.  
In the xib editor, add a Scene View object and set its class to SCNView.  
Your SceneKit code appears in the -(void)awakeFromNib method which is in the class you created in 1.

Method Three

This method does not use a nib file.  You can download the OS X project by pressing the Download ZIP button.
Create a class that is a subview of NSViewController and put in a method that returns the super view type-casted as a SCNView.
In the method - (void)applicationDidFinishLaunching:(NSNotification *)aNotification in your AppDelegate.m file, put code to create an instance of the class you created in 1.
Your SceneKit code appears in the -(id) init method in the class you created in 1.

Discussion

The method you use for creating a SCNView object is up to you.  Mehod One is simple and quick.  Use Method Two if you want to have a View Controller and like to program using the MVC design pattern.  Method Three also gives you a View Controller and an instance of that View Controller in your AppDelegate class.

Other SceneKit information can be found at: http://scenekitinfo.blogspot.com
