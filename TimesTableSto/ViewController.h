//
//  ViewController.h
//  TimesTableSto
//
//  Created by Mac on 30/06/1938 Saka.
//  Copyright © 1938 Saka Akshay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *countArray;
}

@property (weak, nonatomic) IBOutlet UITextField *numberText;

@property (weak, nonatomic) IBOutlet UITextField *limitText;
@property (weak, nonatomic) IBOutlet UIButton *calButton;

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
- (IBAction)handlerCalculate:(id)sender;

@end

