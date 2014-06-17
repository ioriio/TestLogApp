//
//  ViewController.m
//  log_count
//
//  Created by 北原伊織 on 2014/06/10.
//  Copyright (c) 2014年 iori. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
	storage=[NSUserDefaults standardUserDefaults];    label.text=[NSString stringWithFormat:@"%d",(int)number];
    
	if ([storage integerForKey:@"clickCount"])
    {
		label2.text=[NSString stringWithFormat:@"%ld",(long)[storage integerForKey:@"clickCount"]];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)countUp:(id)sender{
	if ([storage integerForKey:@"clickCount"])
    {
		number=[storage integerForKey:@"clickCount"];
	}
	number++;
	[storage setInteger:number forKey:@"clickCount"];
	NSLog(@"%ld",(long)[storage integerForKey:@"clickCount"]);
	BOOL successful = [storage synchronize];
	if (successful) {
		NSLog(@"%@", @"データの保存に成功しました。");
	}
	label.text=[NSString stringWithFormat:@"%ld",number];
}
-(IBAction)detaremove:(id)sender
{
    if ([storage integerForKey:@"clickCount"])
    {
		[storage removeObjectForKey:@"clickCount"];
        label2.text = @"0";
	}
}
-(IBAction)crear:(id)sender
{
    if ([storage integerForKey:@"clickCount"])
    {
		number2=[storage integerForKey:@"clickCount"];
	}
    [storage setInteger:number2 forKey:@"clickCount"];
	NSLog(@"%ld",(long)[storage integerForKey:@"clickCount"]);
	BOOL successful = [storage synchronize];
	if (successful) {
		NSLog(@"%@", @"データの代入に成功しました。");
    }
    label2.text=[NSString stringWithFormat:@"%ld",number2];
    number = 0;
    label.text=[NSString stringWithFormat:@"%ld",number];
}
@end
