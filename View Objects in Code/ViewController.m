//
//  ViewController.m
//  View Objects in Code
//
//  Created by Sakshi Jain on 02/11/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@property (strong,nonatomic) UILabel *myLabel;
@property (strong,nonatomic) UITextField *myTextField;
@property (strong,nonatomic) UILabel *labelUsedInSolution;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect myLabelFrame = CGRectMake(20, 60, 280, 22);
    self.myLabel = [[UILabel alloc] initWithFrame:myLabelFrame];
    self.myLabel.textColor = [UIColor redColor];
    [self.myLabel setText:@"Default text for label"];
    [self.view addSubview:self.myLabel];
    
    //Another method to define a label or textfield , used in solution
    self.labelUsedInSolution = [[UILabel alloc]init];
    self.labelUsedInSolution.frame = CGRectMake(20, 160, 280, 22);
    self.labelUsedInSolution.textColor = [UIColor greenColor];
    self.labelUsedInSolution.text = @"Another label";
    [self.view addSubview: self.labelUsedInSolution];
    
    CGRect myTextFieldFrame = CGRectMake(20, 110, 280, 30);
    self.myTextField = [[UITextField alloc] initWithFrame:myTextFieldFrame];
    self.myTextField.backgroundColor = [UIColor grayColor];
    [self.myTextField setPlaceholder:@"Enter text for text field"];
    [self.view addSubview:self.myTextField];
    
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    myButton.frame = CGRectMake(20, 160, 280, 30);
    [myButton addTarget:self action:@selector(myButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [myButton setTitle:@"Press me" forState:UIControlStateNormal];
    [self.view addSubview:myButton];
}

-(void)myButtonPressed : (UIButton *)sender
{
    self.myLabel.text = self.myTextField.text;
    [self.myTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
