//
//  RRMViewController.m
//  NoNIBSCNView
//
//  Created by Ronald Mourant on 8/19/13.
//  Copyright (c) 2013 Ronald Mourant. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


#import "RRMViewController.h"

@interface RRMViewController ()

@end

@implementation RRMViewController

SCNScene *scene;
SCNNode *cameraNode;

- (SCNView *)view {
    return (SCNView *)[super view];
}


- (id)init
{
    self = [super init];
    if (self) {
        // Create a new empty scene
        scene = [SCNScene scene];
        
        self.view = [[SCNView alloc] init];
        self.view.scene = scene;
        self.view.backgroundColor = [NSColor blueColor];
        
        // create a camera to have a point of view
        cameraNode = [SCNNode node];
        cameraNode.camera = [SCNCamera camera];
        cameraNode.camera.xFov = 60.0;
        cameraNode.camera.yFov = 40.0;
        
        [scene.rootNode addChildNode:cameraNode];
        
    }
    return self;
}

@end
