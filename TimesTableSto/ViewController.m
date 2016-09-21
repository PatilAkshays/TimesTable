//
//  ViewController.m
//  TimesTableSto
//
//  Created by Mac on 30/06/1938 Saka.
//  Copyright © 1938 Saka Akshay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.numberText.keyboardType = UIKeyboardTypeNumberPad;
    self.limitText.keyboardType = UIKeyboardTypeNumberPad;
    
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    
    _calButton.layer.cornerRadius = 15;
    
    _calButton.layer.borderColor = [UIColor whiteColor].CGColor;
    
    _calButton.layer.borderWidth=3;
    
    _myTableView.layer.cornerRadius =15;
    
    _calButton.layer.borderColor = [UIColor blackColor].CGColor;
    
    _calButton.layer.borderWidth=3;
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handlerCalculate:(id)sender {
    
    NSString *numberString = _numberText.text;
    
    NSString *limitString = _limitText.text;
    
    if(numberString.length>0&&limitString.length>0)
    {
        int number = numberString.intValue;
        
        int limit = limitString.intValue;
        
        countArray =[[NSMutableArray alloc]init];
        
        for(int index=1;index<=limit;index++)
        {
            NSString *text = [NSString stringWithFormat:@"%d * %d = %d",number,index,index*number];
            [countArray addObject:text];
        }
        [self.myTableView reloadData];
        
        [self.view endEditing:YES];
    }
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return countArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    
    NSString *result = [countArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = result;
    
    cell.textLabel.font =[UIFont boldSystemFontOfSize:20];
    
    return cell;
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    
}
@end
