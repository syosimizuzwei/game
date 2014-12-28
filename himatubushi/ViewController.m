//
//  ViewController.m
//  himatubushi
//
//  Created by Syotaro Shimizu on 2014/12/25.
//  Copyright (c) 2014年 Syotaro Shimizu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    clearlabel.hidden=YES;
    enemy=600;
     enemytwo=600;
     enemythree=600;
    leftnum=0;
    count=4;
    myhp=400;
    choice=1;
    death = false;
    deathtwo=false;
    deaththree=false;
    enemyhptwo.text=[NSString stringWithFormat:@"600"];
    enemyhpthree.text=[NSString stringWithFormat:@"600"];
    enemyhp.text=[NSString stringWithFormat:@"600"];
    mypower.text=[NSString stringWithFormat:@"0"];
    myhpLabel.text=[NSString stringWithFormat:@"%d",myhp];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)enemyone{
    choice=1;
}
-(IBAction)enemytwo{
    choice=2;
}
-(IBAction)enemythree{
    choice=3;
}
-(IBAction)powerup{
    count--;
    if (count==0) {
        count=4;
        if (leftnum==0) {
            myhp=myhp-arc4random()%15-11;
        }
        else if (leftnum==1) {myhp=myhp-arc4random()%15-6;}
        else if(leftnum==2){myhp=myhp-arc4random()%15-4;}
           
            if (myhp<=0)
            {   myhpLabel.text=[NSString stringWithFormat:@"ゲームオーバー"];
                kogeki.hidden=YES;
                tameru.hidden=YES;}
            
        
        myhpLabel.text=[NSString stringWithFormat:@"%d",myhp];
        
        NSLog(@"%d",count);
    }

   
    if (power>=100) {
        power=power+30;
    }
    else{ power=power+20;}
    mypower.text=[NSString stringWithFormat:@"%d",power];
}
-(IBAction)attack{
    count--;
    if (count==0) {
        
        if (leftnum==0) {
            myhp=myhp-arc4random()%15-11;
            myhpLabel.text=[NSString stringWithFormat:@"%d",myhp];
            count=4;
            NSLog(@"count%d",count);
            }
        else if (leftnum==1) {  myhp=myhp-arc4random()%15-6;
            myhpLabel.text=[NSString stringWithFormat:@"%d",myhp];
                count=4;
             NSLog(@"count%d",count);
            }
        else if(leftnum==2){myhp=myhp-arc4random()%15-4;
            myhpLabel.text=[NSString stringWithFormat:@"%d",myhp];
                count=4;
             NSLog(@"count%d",count);
            }
         if(leftnum==3){
            clearlabel.text=[NSString stringWithFormat:@"クリアー"];
             clearlabel.hidden=NO;
             
        }
            if (myhp<=0) {
                clearlabel.text=[NSString stringWithFormat:@"ゲームオーバー"];
                kogeki.hidden=YES;
                tameru.hidden=YES;
            }
        
    
       
    }
    if (choice==1) {
        enemy=enemy-power;
        enemyhp.text=[NSString stringWithFormat:@"%d",enemy];
        NSLog(@"choice%d",choice);
    }
    else if (choice==2){
        enemytwo=enemytwo-power;
        enemyhptwo.text=[NSString stringWithFormat:@"%d",enemytwo];
        NSLog(@"choice%d",choice);
    }
    else if (choice==3){
        enemythree=enemythree-power;
        enemyhpthree.text=[NSString stringWithFormat:@"%d",enemythree];
        NSLog(@"choice%d",choice);
    }
    power=0;
    mypower.text=[NSString stringWithFormat:@"%d",power];
    
    if (enemy<=0 && death==false) {
        enone.hidden=YES;
        leftnum=leftnum+1;
        NSLog(@"leftnum%d",leftnum);
        death = true;
        enemyhp.text=[NSString stringWithFormat:@"0"];}
     if (enemytwo<=0 && deathtwo==false) {
        entwo.hidden=YES;
        enemyhptwo.text=[NSString stringWithFormat:@"0"];
        leftnum=leftnum+1;
         NSLog(@"leftnum%d",leftnum);
         deathtwo=true;
    }
     if (enemythree<=0 && deaththree==false) {
        enthree.hidden=YES;
        leftnum=leftnum+1;
        enemyhpthree.text=[NSString stringWithFormat:@"0"];
         NSLog(@"leftnum%d",leftnum);
         deaththree=true;
         
    }
}
-(IBAction)zenntaikougeki{
    count--;
    if (count==0) {
        
        if (leftnum==0) {
            myhp=myhp-arc4random()%15-11;
            myhpLabel.text=[NSString stringWithFormat:@"%d",myhp];
            count=4;
            NSLog(@"count%d",count);
        }
        else if (leftnum==1) {  myhp=myhp-arc4random()%15-6;
            myhpLabel.text=[NSString stringWithFormat:@"%d",myhp];
            count=4;
            NSLog(@"count%d",count);
        }
        else if(leftnum==2){myhp=myhp-arc4random()%15-4;
            myhpLabel.text=[NSString stringWithFormat:@"%d",myhp];
            count=4;
            NSLog(@"count%d",count);
        }
        if(leftnum==3){
            clearlabel.text=[NSString stringWithFormat:@"クリアー"];
        }
        if (myhp<=0) {
            clearlabel.text=[NSString stringWithFormat:@"ゲームオーバー"];
            kogeki.hidden=YES;
            tameru.hidden=YES;
        }
        
        
        
    }
    enemy=enemy-power/4;
    enemyhp.text=[NSString stringWithFormat:@"%d",enemy];
    enemytwo=enemytwo-power/4;
    enemyhptwo.text=[NSString stringWithFormat:@"%d",enemytwo];
    enemythree=enemythree-power/4;
    enemyhpthree.text=[NSString stringWithFormat:@"%d",enemythree];
    
    power=0;
    mypower.text=[NSString stringWithFormat:@"%d",power];
    
    
    
    
    if (enemy<=0 && death==false) {
        enone.hidden=YES;
        leftnum=leftnum+1;
        NSLog(@"leftnum%d",leftnum);
        death = true;
        enemyhp.text=[NSString stringWithFormat:@"0"];}
    if (enemytwo<=0 && deathtwo==false) {
        entwo.hidden=YES;
        enemyhptwo.text=[NSString stringWithFormat:@"0"];
        leftnum=leftnum+1;
        NSLog(@"leftnum%d",leftnum);
        deathtwo=true;
    }
    if (enemythree<=0 && deaththree==false) {
        enthree.hidden=YES;
        leftnum=leftnum+1;
        enemyhpthree.text=[NSString stringWithFormat:@"0"];
        NSLog(@"leftnum%d",leftnum);
        deaththree=true;
        
    }

}
-(IBAction)retry{
    clearlabel.hidden=YES;
    enemy=600;
    enemytwo=600;
    enemythree=600;
    leftnum=0;
    count=4;
    myhp=400;
    choice=1;
    death = false;
    deathtwo=false;
    deaththree=false;
    enemyhptwo.text=[NSString stringWithFormat:@"600"];
    enemyhpthree.text=[NSString stringWithFormat:@"600"];
    enemyhp.text=[NSString stringWithFormat:@"600"];
    mypower.text=[NSString stringWithFormat:@"0"];
    myhpLabel.text=[NSString stringWithFormat:@"%d",myhp];
}










@end
