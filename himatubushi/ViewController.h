//
//  ViewController.h
//  himatubushi
//
//  Created by Syotaro Shimizu on 2014/12/25.
//  Copyright (c) 2014年 Syotaro Shimizu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{   int choice;
    int enemy;
    int enemytwo;
    int enemythree;
    int power;
    int myhp;
    int count;
    int leftnum;
    BOOL death;
    BOOL deathtwo;
    BOOL deaththree;
    IBOutlet UIButton*allatack;
    IBOutlet UIButton*kogeki;
    IBOutlet UIButton*tameru;
    IBOutlet UIButton*enone;
    IBOutlet UIButton*entwo;
    IBOutlet UIButton*enthree;
    IBOutlet UILabel*enemyhp;
    IBOutlet UILabel*mypower;
    IBOutlet UILabel*myhpLabel;
    IBOutlet UILabel*enemyhptwo;
    IBOutlet UILabel*enemyhpthree;
    IBOutlet UILabel*clearlabel;
}
-(IBAction)retry;
-(IBAction)powerup;
-(IBAction)attack;
-(IBAction)enemyone;
-(IBAction)enemytwo;
-(IBAction)enemythree;
-(IBAction)zenntaikougeki;
@end

