//
//  NSMutableArray+JQSafeKit.m
//  JQSafeKit
//
//  Created by HaRi on 2016/10/23.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "NSMutableArray+JQSafeKit.h"
#import "JQSafeKit.h"

@implementation NSMutableArray (JQSafeKit)

+ (void)JQSafeKitExchangeMethod {
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    
    //get object from array method exchange
    [JQSafeKit exchangeInstanceMethod:arrayMClass method1Sel:@selector(objectAtIndex:) method2Sel:@selector(JQSafeKitObjectAtIndex:)];
    
    //array set object at index
    [JQSafeKit exchangeInstanceMethod:arrayMClass method1Sel:@selector(setObject:atIndex:) method2Sel:@selector(JQSafeKitSetObject:atIndexedSubscript:)];
    
    
    //removeObjectAtIndex:
    [JQSafeKit exchangeInstanceMethod:arrayMClass method1Sel:@selector(removeObjectAtIndex:) method2Sel:@selector(JQSafeKitRemoveObjectAtIndex:)];
    
    //insertObject:atIndex:
    [JQSafeKit exchangeInstanceMethod:arrayMClass method1Sel:@selector(insertObject:atIndex:) method2Sel:@selector(JQSafeKitInsertObject:atIndex:)];
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
        [JQSafeKit noteErrorWithException:exception defaultToDo:JQSafeKitDefaultReturnNil];
    }
    @finally {
        return object;
    }
}

//=================================================================
//                    array set object at index
//=================================================================

#pragma mark - get object from array
- (void)JQSafeKitSetObject:(id)obj atIndexedSubscript:(NSUInteger)idx {
    
    @try {
        [self JQSafeKitSetObject:obj atIndexedSubscript:idx];
    }
    @catch (NSException *exception) {
        [JQSafeKit noteErrorWithException:exception defaultToDo:JQSafeKitDefaultIgnore];
    }
    @finally {
        
    }
}

//=================================================================
//                    removeObjectAtIndex:
//=================================================================

#pragma mark - removeObjectAtIndex:
- (void)JQSafeKitRemoveObjectAtIndex:(NSUInteger)index {
    @try {
        [self JQSafeKitRemoveObjectAtIndex:index];
    }
    @catch (NSException *exception) {
        [JQSafeKit noteErrorWithException:exception defaultToDo:JQSafeKitDefaultIgnore];
    }
    @finally {
        
    }
}

//=================================================================
//                    insertObject:atIndex:
//=================================================================

#pragma mark - set方法
- (void)JQSafeKitInsertObject:(id)anObject atIndex:(NSUInteger)index {
    @try {
        [self JQSafeKitInsertObject:anObject atIndex:index];
    }
    @catch (NSException *exception) {
        [JQSafeKit noteErrorWithException:exception defaultToDo:JQSafeKitDefaultIgnore];
    }
    @finally {
        
    }
}

@end
