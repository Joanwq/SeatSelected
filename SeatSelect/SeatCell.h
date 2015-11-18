//
//  SeatCell.h
//  SeatSelect
//
//  Created by qianfeng on 15/11/16.
//  Copyright © 2015年 ThreeGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SeatCellDelegate <NSObject>

- (void)seatIsSelect:(UIButton *)btn;

@end

@interface SeatCell : UICollectionViewCell

@property (nonatomic) id<SeatCellDelegate> delegate;

@end
