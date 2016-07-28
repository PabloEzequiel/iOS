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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
