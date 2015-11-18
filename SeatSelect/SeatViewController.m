//
//  SeatViewController.m
//  SeatSelect
//
//  Created by qianfeng on 15/11/16.
//  Copyright © 2015年 ThreeGroup. All rights reserved.
//

#import "SeatViewController.h"

#import "SeatCell.h"

@interface SeatViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,SeatCellDelegate>

@property (weak, nonatomic) IBOutlet UILabel *seatLabel;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic,copy) NSMutableArray *selectItemArray;
@property (weak, nonatomic) IBOutlet UILabel *moneyCountLabel;

@end

@implementation SeatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _selectItemArray = [NSMutableArray new];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.seatLabel.text = [NSString stringWithFormat:@"您已经选中0个座位"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"SeatCell";
    SeatCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.delegate = self;
    return cell;
}

#pragma mark - 实现座位选中的代理方法
- (void)seatIsSelect:(UIButton *)btn
{
    if(btn.selected == YES)
    {
        [_selectItemArray addObject:btn];
    }else{
        [_selectItemArray removeObject:btn];
    }
    self.seatLabel.text = [NSString stringWithFormat:@"您已经选中%ld个座位",self.selectItemArray.count];
    self.moneyCountLabel.text = [NSString stringWithFormat:@"应付金额：%ld元",self.selectItemArray.count*15];
}

#pragma mark - 付款
- (IBAction)payButtonClick:(UIButton *)sender
{
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
