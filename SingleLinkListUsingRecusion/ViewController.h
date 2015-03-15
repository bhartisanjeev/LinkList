//
//  ViewController.h
//  SingleLinkListUsingRecusion
//
//  Created by sanjeev bharti on 3/14/15.
//  Copyright (c) 2015 sanjeev bharti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Node.h"

@interface ViewController : UIViewController {

    Node    *root ; // to keep track of root node
    Node    *newRoot ; // keep track of new root while reversing a linklist
}

// all linklist operations

// Inserting node to linklist
- (Node *)insertNode:(Node *)node withData:(int)data ;

// go through all nodes in linklist
- (void)traverseNode :(Node *)node ;

//delete a specific node in linklist
- (void)deleteNode:(Node *)node andData:(int)data ;

//reverse entire linklist
- (void)reverseLinkList:(Node *)node ;


@end

