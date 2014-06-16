//
//  vc1.m
//  aaa
//
//  Created by tony on 2014/6/16.
//  Copyright (c) 2014年 cheng Yi Hsin. All rights reserved.
//

#import "vc1.h"

@interface vc1 ()
{
    NSArray *aa;
    NSMutableArray *BB;
    UIButton *btns;
}

@end

@implementation vc1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    int a=0;
    
    aa=[NSArray arrayWithObjects:@"momo1.jpg",@"momo2.jpg",@"momo3.jpg",@"momo4.jpg",@"momo5.jpg", nil];
    
    for (NSString *str in aa) {
        
        
        //        UIImageView *vi=[[UIImageView alloc]initWithFrame:CGRectMake(0+a*70, 150, 50, 50)];
        //        a++;
        //        [self.view addSubview:vi];
        //        [vi setImage:[UIImage imageNamed:str]];
        btns=[[UIButton alloc]initWithFrame:CGRectMake(0+a*70, 150, 50, 50)];
        
        a++;
        [self.view addSubview:btns];
        [btns setImage:[UIImage imageNamed:str] forState:UIControlStateNormal];
        [UIView animateWithDuration:3.0 animations:^{
            btns.frame=CGRectMake(btns.frame.origin.x, btns.frame.origin.y+200, btns.frame.size.width, btns.frame.size.height);}];
        
        
        
        
    }
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
