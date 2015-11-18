//
//  SeatCell.m
//  SeatSelect
//
//  Created by qianfeng on 15/11/16.
//  Copyright © 2015年 ThreeGroup. All rights reserved.
//

#import "SeatCell.h"

@interface SeatCell()

@property (weak, nonatomic) IBOutlet UIButton *seatButton;

@end

@implementation SeatCell

- (IBAction)seatButtonClick:(id)sender
{
    if(self.seatButton.selected == YES)
    {
        self.seatButton.selected = NO;
        [_delegate seatIsSelect:self.seatButton];
    }else{
        self.seatButton.selected = YES;
        [_delegate seatIsSelect:self.seatButton];
    }
}


@end
