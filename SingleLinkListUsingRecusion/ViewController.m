//
//  ViewController.m
//  SingleLinkListUsingRecusion
//
//  Created by sanjeev bharti on 3/14/15.
//  Copyright (c) 2015 sanjeev bharti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (Node *)createNewNodeAndData:(int)data ;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // creating 10 nodes
    for (int index = 0; index < 10; index++) {

        [self insertNode:root withData:arc4random() % 10000];
        
    }
    
    /*
        arc4random() return a random number
        arc4random() % 10000 return a random number from 0 - 10000

     */
    
    NSLog(@"Current Traversal started");
    
    [self traverseNode:root];
    
    [self reverseLinkList:root];
    
    NSLog(@" Reversing LinkList Traversal started");
    
    [self traverseNode:newRoot];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark - Linklist Methods

// Inserting node to linklist

- (Node *)insertNode:(Node *)node withData:(int)data {
    
    if (root == NULL) {
        
        root = [self createNewNodeAndData:data];
        node = root ;
        
    } else if (node == NULL) {
        
        node = [self createNewNodeAndData:data ];
        
    } else {
        
        node.next = [self insertNode:node.next withData:data];
    }
    
    return node ;
}

// go through all nodes in linklist

- (void)traverseNode :(Node *)node {
    
    if (node == NULL) {
        return ;
    }
    NSLog(@"node data = %d",node.data);
    [self traverseNode:node.next];
}

//delete a specific node in linklist

- (void)deleteNode:(Node *)node andData:(int)data {
    
    if (node.next.data == data) {
            
            node.next = node.next.next ;

    } else {
        
        [self deleteNode:node.next andData:data];
    }
} //method closed

//reverse entire linklist
- (void)reverseLinkList:(Node *)node {

    if (node.next == NULL) {
        
        [self insertNode:newRoot withData:node.data];
        return ;
    }
    
    else if (node.next.next == NULL) {
    
        if (newRoot == NULL) {
            
            newRoot = node.next ;

        } else {
        
            [self insertNode:newRoot withData:node.next.data];
        }
        
        node.next = NULL ;
        [self reverseLinkList:root];
        
    } else {
        
        [self reverseLinkList:node.next];
    }
}

#pragma mark - Private methods

// create node with NULL Header and desired data

- (Node *)createNewNodeAndData:(int)data {
    
    Node *node  = [[Node alloc] init];
    node.data   = data ;
    node.next   = NULL ;
    return node ;
}


@end
