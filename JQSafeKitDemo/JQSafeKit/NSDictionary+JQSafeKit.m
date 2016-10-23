//
//  NSDictionary+JQSafeKit.m
//  JQSafeKit
//
//  Created by HaRi on 20/10/16.
//  Copyright © 2016年 HanJunqiang. All rights reserved.
//

#import "NSDictionary+JQSafeKit.h"

#import "JQSafeKit.h"

@implementation NSDictionary (JQSafeKit)

+ (void)JQSafeKitExchangeMethod {
    
    [JQSafeKit exchangeClassMethod:self method1Sel:@selector(dictionaryWithObjects:forKeys:count:) method2Sel:@selector(JQSafeKitDictionaryWithObjects:forKeys:count:)];
}


+ (instancetype)JQSafeKitDictionaryWithObjects:(const id  _Nonnull __unsafe_unretained *)objects forKeys:(const id<NSCopying>  _Nonnull __unsafe_unretained *)keys count:(NSUInteger)cnt {
    
    id instance = nil;
    
    @try {
        instance = [self JQSafeKitDictionaryWithObjects:objects forKeys:keys count:cnt];
    }
    @catch (NSException *exception) {
        
        NSString *defaultToDo = @"This framework default is to remove nil key-values and instance a dictionary.";
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
        
        //处理错误的数据，然后重新初始化一个字典
        NSUInteger index = 0;
        id  _Nonnull __unsafe_unretained newObjects[cnt];
        id  _Nonnull __unsafe_unretained newkeys[cnt];
        
        for (int i = 0; i < cnt; i++) {
            if (objects[i] && keys[i]) {
                newObjects[index] = objects[i];
                newkeys[index] = keys[i];
                index++;
            }
        }
        instance = [self JQSafeKitDictionaryWithObjects:newObjects forKeys:newkeys count:index];
    }
    @finally {
        return instance;
    }
}

@end
