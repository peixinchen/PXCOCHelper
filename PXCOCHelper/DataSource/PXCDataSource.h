//
//  PXCDataSource.h
//  PXCOCHelper
//
//  Created by peixinchen on 15-4-18.
//  Copyright (c) 2015年 peixinchen. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^PXCCellConfigureBlock)(id cell, id item);

@interface PXCDataSource : NSObject <UITableViewDataSource, UICollectionViewDataSource>

- (instancetype)initWithCellIdentifier:(NSString *)cellIdentifier
                    cellConfigureBlock:(PXCCellConfigureBlock)cellConfigureBlock;

- (instancetype)initWithCellIdentifier:(NSString *)cellIdentifier
                    cellConfigureBlock:(PXCCellConfigureBlock)cellConfigureBlock
                                 items:(NSArray *)items;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

- (void)setItems:(NSArray *)items;

@end
