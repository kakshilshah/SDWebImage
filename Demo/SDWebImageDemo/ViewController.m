//
//  ViewController.m
//  SDWebImageDemo
//
//  Created by  on 2/23/12.
//  Copyright (c) 2012 Mark Rickert. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"

@implementation ViewController

@synthesize images;

- (id)init
{
  if(self = [super init])
  {
    self.images = [NSArray arrayWithObjects:
                      @"http://i.imgur.com/ja3Zi.jpg",
                      @"http://i.imgur.com/igmBy.jpg",
                      @"http://i.imgur.com/hKoGD.jpg",
                      @"http://i.imgur.com/kdjJG.jpg",
                      @"http://i.imgur.com/Cn3vX.jpg",
                      @"http://i.imgur.com/nu8Q0.gif",
                      @"http://i.imgur.com/l1YDL.jpg",
                      @"http://i.imgur.com/w1SWT.jpg",
                      @"http://i.imgur.com/63ne3.jpg",
                      @"http://i.imgur.com/LZIm2.jpg",
                      @"http://i.imgur.com/pEVAj.jpg",
                      @"http://i.imgur.com/J06Ue.jpg",
                   nil];
  }
  return self;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [self.images count];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
  return @"SDWebImage Demo";
}

-(float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 100.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *kCellID = @"cellID";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellID];
	if (cell == nil)
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCellID];
	
  //Set up the image view and then set it to the accessory view of the cell.
  [cell.imageView setImageWithURL:[NSURL URLWithString:[self.images objectAtIndex:indexPath.row]] placeholderImage:[UIImage imageNamed:@"placeholder"]];

  cell.textLabel.text = [self.images objectAtIndex:indexPath.row];
  
	return cell;
}

@end
