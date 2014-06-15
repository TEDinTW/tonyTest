//
//  playVC.m
//  quickerAbc
//
//  Created by admin on 14/6/15.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "playVC.h"

@interface playVC (){
    
 NSArray *allLetters;
}
@end

@implementation playVC

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
    // Do any additional setup after loading the view.
    allLetters= [NSArray arrayWithObjects:@"01.jpg",@"02.jpg",@"03.jpg",@"04.jpg",@"05.jpg",@"06.jpg",
                 @"07.jpg",@"08.jpg",@"09.jpg",@"10.jpg",@"11.jpg",@"12.jpg",@"13.jpg",@"14.jpg",@"15.jpg",@"16.jpg",@"17.jpg",
                 @"18.jpg",@"19.jpg",@"20.jpg",@"21.jpg",@"22.jpg",@"23.jpg",@"24.jpg",@"25.jpg",@"26.jpg",nil];
    
    int tmpi=0;
    for (NSString *str in allLetters) {
        UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(tmpi*45, -10, 45, 45)];
        imgView.image=[UIImage imageNamed:str];
        [self.view addSubview:imgView];
        tmpi++;
       
        
        }
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
static int i = 0;

-(void)makeLetter{
    {
        i = i + 1;
        if ([_imgview count] > 0) {
            UIImageView *imageView1 = [_imagesView objectAtIndex:0];
            imageView.tag = i;
            [_imgView removeObjectAtIndex:0];
            [self letterFall:imageView1];
        }
        
    }
}

-(void)letterFall
{
    [UIView animateWithDuration:4.0 animations:^{
        imgView.frame=CGRectMake(imgView.frame.origin.x, self.view.frame.size.height-45, imgView.frame.size.width, imgView.frame.size.height);
        
    }];
}
@end
