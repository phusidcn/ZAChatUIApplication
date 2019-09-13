//
//  MessageHeaderComponent.m
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import "MessageHeaderComponent.h"

@implementation MessageHeaderComponent
+ (instancetype) newWithName:(NSString *)name {
    return [super newWithComponent:[CKFlexboxComponent newWithView:{} size:{} style:{} children:{
        {
            [CKInsetComponent newWithInsets:{} component:[CKLabelComponent newWithLabelAttributes:{
                .string = name,
                .color = [UIColor blackColor],
                .font = [UIFont systemFontOfSize:12]
            } viewAttributes:{} size:{}]]
        }
    }]];
}
@end
