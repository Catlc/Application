//
//  ViewController.m
//  SpringDemo
//
//  Created by 李承 on 2017/4/27.
//  Copyright © 2017年 李承. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)          UITableView        *tableView;
@property (strong, nonatomic)        UIView             *blockView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *ssss;

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIButton *left;
@property (weak, nonatomic) IBOutlet UIButton *right;

@property (weak, nonatomic)   IBOutlet UIButton *b1;
@property (weak, nonatomic)   IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *top;
 
@property (weak, nonatomic) IBOutlet UIButton *f1;
@property (weak, nonatomic) IBOutlet UIButton *s1;
@property (weak, nonatomic) IBOutlet UIButton *s2;

@property(nonatomic,strong)NSMutableArray *dataArray;


@end

@implementation ViewController
- (IBAction)start:(id)sender {
    
    
    }
- (IBAction)showSpring:(id)sender {
 
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0.3 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        _button.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -150);
        
        
    } completion:nil];
    
    [UIView animateWithDuration:0.9
                          delay:0.1
         usingSpringWithDamping:0.6
          initialSpringVelocity:0.3
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{_right.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -50);
 }     completion:nil];
    [UIView animateWithDuration:0.9
                          delay:0.1
         usingSpringWithDamping:0.6
          initialSpringVelocity:0.3
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{_left.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -50);
 }     completion:nil];
    [UIView animateWithDuration:0.9
                          delay:0.1
         usingSpringWithDamping:0.6
          initialSpringVelocity:0.3
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{_b1.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -200);
 }     completion:nil];
    [UIView animateWithDuration:0.9
                          delay:0.2
         usingSpringWithDamping:0.6
          initialSpringVelocity:0.3
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{_b2.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -200);
 }     completion:nil];
    [UIView animateWithDuration:0.9
                          delay:0.1
         usingSpringWithDamping:0.6
          initialSpringVelocity:0.3
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{_f1.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -200);
 }     completion:^(BOOL finished) {
    [self performSelector:@selector(reset)
               withObject:nil
               afterDelay:2];
    
                     }];
    [UIView animateWithDuration:0.9
                          delay:0.3
         usingSpringWithDamping:0.6
          initialSpringVelocity:0.3
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{_s1.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -200);
                      }     completion:nil];
    [UIView animateWithDuration:0.9
                          delay:0.4
         usingSpringWithDamping:0.6
          initialSpringVelocity:0.3
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{_s2.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, -200);
                      }     completion:nil];

}

-(void)reset{
    for (UIView *view in self.view.subviews) {
        view.transform = CGAffineTransformIdentity;
//        view.backgroundColor = [UIColor clearColor];

    }

}

//typedef NS_ENUM(NSInteger, UITableViewRowAnimation) {
//    UITableViewRowAnimationFade,   //淡入淡出
//    UITableViewRowAnimationRight,  //从右滑入         // slide in from right (or out to right)
//    UITableViewRowAnimationLeft,   //从左滑入
//    UITableViewRowAnimationTop,     //从上滑入
//    UITableViewRowAnimationBottom,  //从下滑入
//    UITableViewRowAnimationNone,            // available in iOS 3.0
//    UITableViewRowAnimationMiddle,          // available in iOS 3.2.  attempts to keep cell centered in the space it will/did occupy
//    UITableViewRowAnimationAutomatic = 100  // available in iOS 5.0.  chooses an appropriate animation style for you
//};
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
    }
    
    return _dataArray;
}
-(void)reloadeds
{
    NSArray *array = @[@"淡入淡出",@"从右滑入",@"从左滑入",@"1234567890",@"attempts",@"appropriate",@"animation",@"style for you",@"chooses",@"UITableViewRowAnimationAutomatic",@"typically",@"loading",@"additional",@"from a nib"];
    self.dataArray = array.mutableCopy;
//    NSIndexSet *indexSet = [[NSIndexSet alloc] initWithIndex:0];
//    [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationFade];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:3 inSection:0];
    [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath,nil] withRowAnimation:UITableViewRowAnimationAutomatic];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    self.tableView.frame = self.view.bounds;
//    self.tableView.delegate = self;
//    self.tableView.dataSource = self;
//    [self.view addSubview:self.tableView];
    
    NSArray *array = @[@"淡入淡出",@"从右滑入",@"从左滑入",@"available",@"attempts",@"appropriate",@"animation",@"style for you",@"chooses",@"UITableViewRowAnimationAutomatic",@"typically",@"loading",@"additional",@"from a nib"];
    self.dataArray = array.mutableCopy;
    
    [self performSelector:@selector(reloadeds)
               withObject:nil
               afterDelay:2];

    
    

    
   
    
}

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [UITableView new];
    }
    return _tableView;
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellName = @"cell";
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellName];
    
    
    // Configure the cell...
    
    cell.textLabel.text = self.dataArray[indexPath.row];
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
