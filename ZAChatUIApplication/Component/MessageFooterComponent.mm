//
//  MessageFooterComponent.m
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import "MessageFooterComponent.h"

@implementation MessageFooterComponent
+ (instancetype) newWithTime:(NSString*) time {
    return [super newWithComponent:[CKFlexboxComponent newWithView:{} size:{} style:{
        .spacing = 10
    } children:{
        {
            [CKInsetComponent newWithInsets:{} component:[CKLabelComponent newWithLabelAttributes:{
                .string = time,
                .color = [UIColor blackColor],
                .font = [UIFont systemFontOfSize:10]
            } viewAttributes:{} size:{}]]
        }
    }]];
}
@end
