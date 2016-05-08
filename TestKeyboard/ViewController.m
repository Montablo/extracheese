//
//  ViewController.m
//  TestKeyboard
//
//  Created by Jocelyn Sussman on 4/23/16.
//  Copyright © 2016 Jacob Sussman. All rights reserved.
//

#import "ViewController.h"
@import MobileCoreServices;

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)testGif:(id)sender {
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://fc05.deviantart.net/fs37/f/2008/283/a/b/KaleidoCoils_animated__gif_by_1389AD.gif"]];
    UIPasteboard *pasteBoard=[UIPasteboard generalPasteboard];
    [pasteBoard setImage:[UIImage imageWithData:data]];
    
    
   // [];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
