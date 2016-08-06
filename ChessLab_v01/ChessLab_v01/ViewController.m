//
//  ViewController.m
//  ChessLab_v01
//
//  Created by Pablo Ezequiel Inchausti on 28/7/16.
//  Copyright © 2016 Pablo Ezequiel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *img_board;
@property (weak, nonatomic) IBOutlet UILabel *txt_hint_solution;
@property (weak, nonatomic) IBOutlet UISlider *btn_slider;

@property (weak, nonatomic) IBOutlet UITextView *txt_solution;


@end

@implementation ViewController

int counter = 1;

- (IBAction)btn_next:(id)sender {

    NSLog(@"bnt_hint next");
    counter++;
    _img_board.image = [UIImage imageNamed:[NSString stringWithFormat:@"chess_mate1_0000%d.png", counter]];
    


}


- (IBAction)btn_hint:(id)sender {
    
    NSLog(@"bnt_hint click");

    // 1. ♖xc5+ ♚b6 2. ♕c7+ ♚a7 3. ♖xa5+ Qa6 4. ♗d4#
    
    if (counter == 1) {
         _txt_hint_solution.text = @"1. ♕d6+ ♚e8 2. ♗d7+ ♚d8 3. ♗xb5+ ♚c8 4. ♗a6#";
    }
    if (counter == 2) {
        _txt_hint_solution.text = @"1. ♖xc5+ ♚b6 2. ♕c7+ ♚a7 3. ♖xa5+ ♛a6 4. ♗d4#";
    }
    if (counter == 3) {
        _txt_hint_solution.text = @"1. ♗g5+ ♜f6 2. ♗xf6+ gxf6 3. ♕g7+ ♚e8 4. ♕f7#";
    }
    if (counter == 4) {
        _txt_hint_solution.text = @"1. ♕xh7+ ♚xh7 2. ♖h3+ ♝xh3 3. ♖xh3+ ♚g6 4. ♖h6#";
    }
    if (counter == 5) {
        _txt_hint_solution.text = @"1. ♘c7+ ♛xc7 2. ♕xf7+ ♝xf7 3. ♗xf7#";
    }
 
    
}


- (IBAction)sliderValueChanged:(id)sender {
    
    // let roundedValue = round(sender.value / step) * step


    int sliderValue;
    sliderValue = lroundf(_btn_slider.value);
    [_btn_slider setValue:sliderValue animated:YES];
    
    
    // change image
        _img_board.image = [UIImage imageNamed:[NSString stringWithFormat:@"chess_mate1_0000%i.png", sliderValue]];

    
    
    NSLog(@"sliderValueChanged --> %i", sliderValue);

}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // init
    _btn_slider.continuous = YES;
    [_btn_slider addTarget:self
               action:@selector(sliderValueChanged:)
     forControlEvents:UIControlEventValueChanged];
    
    

    
    UIImage *stretchableFillImage = [[UIImage imageNamed:@"sliderbar_fill"]
                                     resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 6.0f, 0.0f, 6.0f)];
    UIImage *stretchableTrackImage = [[UIImage imageNamed:@"sliderbar_track"]
                                      resizableImageWithCapInsets:UIEdgeInsetsMake(0.0f, 6.0f, 0.0f, 6.0f)];
    
    [_btn_slider setMinimumTrackImage:stretchableFillImage forState:UIControlStateNormal];
    [_btn_slider setMaximumTrackImage:stretchableTrackImage forState:UIControlStateNormal];

    
    // change tumblr slider
    
    UIImage *thumbImage = [UIImage imageNamed:@"pieza06_peon.png"];
    
   // UIImage *thumb2 = [thumbImage imageWith]
    UIImage *thumb2 = [self imageWithImage:  thumbImage scaledToWidth: 36.0f ];
    
    [_btn_slider setThumbImage:thumb2 forState:UIControlStateNormal];
    [_btn_slider setThumbImage:thumb2 forState:UIControlStateHighlighted];
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




/**
 * How to scale an image where you only Know the width and you want a ratio.
 * http://stackoverflow.com/questions/7645454/resize-uiimage-by-keeping-aspect-ratio-and-width
 */
-(UIImage*)imageWithImage: (UIImage*) sourceImage scaledToWidth: (float) i_width
{
    float oldWidth = sourceImage.size.width;
    float scaleFactor = i_width / oldWidth;
    
    float newHeight = sourceImage.size.height * scaleFactor;
    float newWidth = oldWidth * scaleFactor;
    
    UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
    [sourceImage drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}



@end
