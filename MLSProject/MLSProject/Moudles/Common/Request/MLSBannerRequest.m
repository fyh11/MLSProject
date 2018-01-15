//
//  MLSBannerRequest.m
//  MLSProject
//
//  Created by MinLison on 2017/12/1.
//  Copyright © 2017年 mlsproject. All rights reserved.
//

#import "MLSBannerRequest.h"

@implementation MLSBannerRequest
+ (instancetype)requestWithType:(LNBannerRequestType)type
{
        MLSBannerRequest *request = [super requestWithParams:nil];
        request.type = type;
        return request;
}

- (NSString *)url
{
        switch (self.type)
        {
                case LNArticleListRequestTypeHome:
                        return @"/api.php/index/banner";
                        break;
                case LNArticleListRequestTypeSport:
                        return @"/api.php/sport/banner";
                        break;
                default:
                        return @"";
                        break;
        }
        
}
- (Class)contentType
{
        return [MLSBannerListModel class];
}
@end