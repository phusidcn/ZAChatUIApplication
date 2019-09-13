//
//  ChatViewController.m
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController () <CKComponentProvider, UICollectionViewDelegateFlowLayout>
@end

@implementation ChatViewController {
    CKCollectionViewDataSource *_dataSource;
    //QuoteModelController *_quoteModelController;
    CKComponentFlexibleSizeRangeProvider *_sizeRangeProvider;
}

- (instancetype) initWithCollectionViewLayout:(UICollectionViewLayout *)layout{
    self = [super initWithCollectionViewLayout:layout];
    if (self) {
        self.title = @"Messenger";
        self.collectionView.backgroundColor = [UIColor colorWithWhite:0.8 alpha:0.9];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.delegate = self;
    
    CKComponentFlexibleSizeRangeProvider *sizeRangeProvider = [CKComponentFlexibleSizeRangeProvider providerWithFlexibility:CKComponentSizeRangeFlexibleHeight];
    const CKSizeRange sizeRange = [sizeRangeProvider sizeRangeForBoundingSize:self.collectionView.bounds.size];
    CKDataSourceConfiguration *configuration = [[CKDataSourceConfiguration alloc] initWithComponentProvider:[self class] context:context sizeRange:sizeRange];
    
    // Create data source
    _dataSource = [[CKCollectionViewDataSource alloc] initWithCollectionView:self.collectionView supplementaryViewDataSource:nil configuration:configuration];
    
    CKDataSourceChangeset *initialChangeset = [[[CKDataSourceChangesetBuilder transactionalComponentDataSourceChangeset] withInsertedSections:[NSIndexSet indexSetWithIndex:0]] build];
    [_dataSource applyChangeset:initialChangeset mode:CKUpdateModeAsynchronous userInfo:nil];
}

#pragma mark : - collection view datasource
- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [_dataSource sizeForItemAtIndexPath:indexPath];
}

- (void)collectionView:(UICollectionView *)collectionView
       willDisplayCell:(UICollectionViewCell *)cell
    forItemAtIndexPath:(NSIndexPath *)indexPath
{
    [_dataSource announceWillDisplayCell:cell];
}

- (void)collectionView:(UICollectionView *)collectionView
  didEndDisplayingCell:(UICollectionViewCell *)cell
    forItemAtIndexPath:(NSIndexPath *)indexPath
{
    [_dataSource announceDidEndDisplayingCell:cell];
}

@end
