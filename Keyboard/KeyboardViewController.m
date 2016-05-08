//
//  KeyboardViewController.m
//  Keyboard
//
//  Created by Jocelyn Sussman on 4/23/16.
//  Copyright © 2016 Jacob Sussman. All rights reserved.
//

#import "KeyboardViewController.h"

@import MobileCoreServices;
@interface KeyboardViewController ()
@property (weak, nonatomic) IBOutlet UILabel *copiedLabel;
@property (nonatomic, strong) UIButton *nextKeyboardButton;
@end
@implementation KeyboardViewController

- (void)updateViewConstraints {
    [super updateViewConstraints];
    
    // Add custom view sizing constraints here
}


//Buttons

- (IBAction)NextKeyboardButton:(id)sender {
        [self.nextKeyboardButton addTarget:self action:@selector(advanceToNextInputMode) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:self.nextKeyboardButton];

}


- (IBAction)copyGifTest:(UIButton *)sender forEvent:(UIEvent *)event {
    copiedLabel1.text = @"Copying...";
    copiedLabel1.adjustsFontSizeToFitWidth = YES;
    copiedLabel1.backgroundColor = [UIColor grayColor];
    copiedLabel1.minimumScaleFactor = 10.0f/12.0f;
    copiedLabel1.font = [UIFont fontWithName:@"AvenirNextCondensed-Bold" size:14.0];
    copiedLabel1.backgroundColor =[UIColor colorWithRed:189 green:195 blue:199 alpha:0.7];
    copiedLabel1.textColor = [UIColor blackColor];
    copiedLabel1.textAlignment = NSTextAlignmentCenter;
    [UIView animateWithDuration:3 animations:^(void) {
        copiedLabel1.alpha = 0;
        
    }];
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://cdn.osxdaily.com/wp-content/uploads/2013/07/dancing-banana.gif"]];
    UIPasteboard *pasteBoard=[UIPasteboard generalPasteboard];
    [pasteBoard setData:data forPasteboardType:(__bridge NSString *)kUTTypeGIF];
}


- (IBAction)wowGif:(UIButton *)sender {
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"111.gif"]];
    UIPasteboard *pasteBoard=[UIPasteboard generalPasteboard];
    [pasteBoard setData:data forPasteboardType:(__bridge NSString *)kUTTypeGIF];
}

- (IBAction)testingGif:(UIButton *)sender {
    //Copying Label
    copiedLabel3.text = @"Copying...";
    copiedLabel3.adjustsFontSizeToFitWidth = YES;
    copiedLabel3.backgroundColor = [UIColor grayColor];
    copiedLabel3.minimumScaleFactor = 10.0f/12.0f;
    copiedLabel3.clipsToBounds = YES;
    copiedLabel3.backgroundColor =[UIColor colorWithRed:189 green:195 blue:199 alpha:0.7];
    copiedLabel3.font = [UIFont fontWithName:@"AvenirNextCondensed-Bold" size:14.0];
    copiedLabel3.textColor = [UIColor blackColor];
    copiedLabel3.textAlignment = NSTextAlignmentCenter;
    [UIView animateWithDuration:3 animations:^(void) {
        copiedLabel3.alpha = 0;
        
    }];
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://g.twimg.com/blog/blog/image/Cat-party.gif"]];
    UIPasteboard *pasteBoard=[UIPasteboard generalPasteboard];
    [pasteBoard setData:data forPasteboardType:(__bridge NSString *)kUTTypeGIF];
}



- (IBAction)DeleteButton:(UIButton *)sender {
     [self.textDocumentProxy deleteBackward];
}










//Actual Code

- (void)viewDidLoad {
    

    [super viewDidLoad];
    
    
    
    // Perform custom UI setup here
    /*
    self.nextKeyboardButton = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [self.nextKeyboardButton setTitle:NSLocalizedString(@"Next Keyboard", @"Title for 'Next Keyboard' button") forState:UIControlStateNormal];
    [self.nextKeyboardButton sizeToFit];
    self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.nextKeyboardButton addTarget:self action:@selector(advanceToNextInputMode) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.nextKeyboardButton];
    
    [self.nextKeyboardButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    [self.nextKeyboardButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
}

- (void)textWillChange:(id<UITextInput>)textInput {
    // The app is about to change the document's contents. Perform any preparation here.
}

- (void)textDidChange:(id<UITextInput>)textInput {
    // The app has just changed the document's contents, the document context has been updated.
    
    UIColor *textColor = nil;
    if (self.textDocumentProxy.keyboardAppearance == UIKeyboardAppearanceDark) {
        textColor = [UIColor whiteColor];
    } else {
        textColor = [UIColor blackColor];
    }
    [self.nextKeyboardButton setTitleColor:textColor forState:UIControlStateNormal];
}


@end
