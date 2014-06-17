//
//  ViewController.h
//  log_count
//
//  Created by 北原伊織 on 2014/06/10.
//  Copyright (c) 2014年 iori. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //(☝ ՞ਊ ՞)☝ｷｴｴｴｴｴｴｴｴｴｴｴｴｴｴｴｴｴｴ
    //▂▅▇█▓▒░(’ω’)░▒▓█▇▅▂うわあああああああ
    IBOutlet UILabel *label,*label2;
	long number;
    long number2;
	NSUserDefaults *storage;
}
-(IBAction)countUp:(id)sender;
-(IBAction)detaremove:(id)sender;
-(IBAction)crear:(id)sender;
@end
