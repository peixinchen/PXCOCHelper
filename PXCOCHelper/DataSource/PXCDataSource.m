//
//  PXCDataSource.m
//  PXCOCHelper
//
//  Created by peixinchen on 15-4-18.
//  Copyright (c) 2015年 peixinchen. All rights reserved.
//

#import "PXCDataSource.h"

@interface PXCDataSource ()

@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) PXCCellConfigureBlock cellConfigureBlock;
@property (nonatomic, copy) NSArray *items;

@end

@implementation PXCDataSource

- (instancetype)init {
    NSAssert(NO, @"Should never call init directly!");
    
    return nil;
}

- (instancetype)initWithCellIdentifier:(NSString *)cellIdentifier cellConfigureBlock:(PXCCellConfigureBlock)cellConfigureBlock items:(NSArray *)items {
    
    self = [super init];
    if (self) {
        self.cellIdentifier = cellIdentifier;
        self.cellConfigureBlock = cellConfigureBlock;
        self.items = items;
    }
    
    return self;
}

- (instancetype)initWithCellIdentifier:(NSString *)cellIdentifier cellConfigureBlock:(PXCCellConfigureBlock)cellConfigureBlock {
    
    return [self initWithCellIdentifier:cellIdentifier
                     cellConfigureBlock:cellConfigureBlock
                                  items:nil];
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[indexPath.row];
}

- (void)setItems:(NSArray *)items {
    _items = items;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    
    id item = [self itemAtIndexPath:indexPath];
    
    self.cellConfigureBlock(cell, item);
    
    return cell;
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.cellIdentifier forIndexPath:indexPath];
    
    id item = [self itemAtIndexPath:indexPath];
    
    self.cellConfigureBlock(cell, item);
    
    return cell;
}

@end
