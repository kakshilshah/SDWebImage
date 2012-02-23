//
//  ViewController.h
//  SDWebImageDemo
//
//  Created by  on 2/23/12.
//  Copyright (c) 2012 Mark Rickert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *images;

@end
