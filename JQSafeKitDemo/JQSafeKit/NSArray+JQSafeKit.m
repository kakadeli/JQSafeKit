//
//  NSArray+JQSafeKit.m
//  JQSafeKit
//
//  Created by HaRi on 20/10/16.
//  Copyright © 2016年 HanJunqiang. All rights reserved.
//

#import "NSArray+JQSafeKit.h"

#import "JQSafeKit.h"

@implementation NSArray (JQSafeKit)

+ (void)JQSafeKitExchangeMethod {
    //instance array method exchange
    [JQSafeKit exchangeClassMethod:[self class] method1Sel:@selector(arrayWithObjects:count:) method2Sel:@selector(JQSafeKitArrayWithObjects:count:)];
    
    
    Class arrayIClass = NSClassFromString(@"__NSArrayI");
    
    //get object from array method exchange
    [JQSafeKit exchangeInstanceMethod:arrayIClass method1Sel:@selector(objectAtIndex:) method2Sel:@selector(JQSafeKitObjectAtIndex:)];
}


//=================================================================
//                        instance array
//=================================================================
#pragma mark - instance array


+ (instancetype)JQSafeKitArrayWithObjects:(const id  _Nonnull __unsafe_unretained *)objects count:(NSUInteger)cnt {
    
    id instance = nil;
    
    @try {
        instance = [self JQSafeKitArrayWithObjects:objects count:cnt];
    }
    @catch (NSException *exception) {
        
        NSString *defaultToDo = @"This framework default is to remove nil object and instance a array.";
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
        
        //以下是对错误数据的处理，把为nil的数据去掉,然后初始化数组
        NSInteger newObjsIndex = 0;
        id  _Nonnull __unsafe_unretained newObjects[cnt];
        
        for (int i = 0; i < cnt; i++) {
            if (objects[i] != nil) {
                newObjects[newObjsIndex] = objects[i];
                newObjsIndex++;
            }
        }
        instance = [self JQSafeKitArrayWithObjects:newObjects count:newObjsIndex];
    }
    @finally {
        return instance;
    }
}



//=================================================================
//                   get object from array
//=================================================================
#pragma mark - get object from array

- (id)JQSafeKitObjectAtIndex:(NSUInteger)index {
    
    id object = nil;
    
    @try {
        object = [self JQSafeKitObjectAtIndex:index];
    }
    @catch (NSException *exception) {
        
        NSString *defaultToDo = @"This framework default is to return nil.";
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
    }
    @finally {
        return object;
    }
}



@end
