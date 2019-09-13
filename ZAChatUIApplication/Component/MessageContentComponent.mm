//
//  MessageContentComponent.m
//  ZAChatUIApplication
//
//  Created by CPU11899 on 9/13/19.
//  Copyright © 2019 Huynh Lam Phu Si. All rights reserved.
//

#import "MessageContentComponent.h"

@implementation MessageContentComponent
+ (instancetype) newWithPlaintText:(NSString * _Nullable)text OrImage:(UIImage * _Nullable)image {
    if (text && !image) {
        return [super newWithComponent:[CKFlexboxComponent newWithView:{} size:{} style:{} children:{
            {
                [CKLabelComponent newWithLabelAttributes:{
                    .truncationString = [NSString stringWithString:text]
                } viewAttributes:{} size:{}]
            }
        }]];
    }
    if (!text && image) {
        return [super newWithComponent:[CKFlexboxComponent newWithView:{} size:{} style:{} children:{
            {
                [CKImageComponent newWithImage:image attributes:{} size:{}]
            }
        }]];
    } else {
        return nil;
    }
}
@end
