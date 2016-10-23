//
//  NSMutableDictionary+JQSafeKit.m
//  JQSafeKit
//
//  Created by HaRi on 20/10/16.
//  Copyright © 2016年 HanJunqiang. All rights reserved.
//

#import "NSMutableDictionary+JQSafeKit.h"

#import "JQSafeKit.h"

@implementation NSMutableDictionary (JQSafeKit)

+ (void)JQSafeKitExchangeMethod {
    
    Class dictionaryM = NSClassFromString(@"__NSDictionaryM");
    
    
    //setObject:forKey:
    [JQSafeKit exchangeInstanceMethod:dictionaryM method1Sel:@selector(setObject:forKey:) method2Sel:@selector(JQSafeKitSetObject:forKey:)];
    
    //removeObjectForKey:
    Method removeObjectForKey = class_getInstanceMethod(dictionaryM, @selector(removeObjectForKey:));
    Method JQSafeKitRemoveObjectForKey = class_getInstanceMethod(dictionaryM, @selector(JQSafeKitRemoveObjectForKey:));
    method_exchangeImplementations(removeObjectForKey, JQSafeKitRemoveObjectForKey);
}


//=================================================================
//                       setObject:forKey:
//=================================================================
#pragma mark - setObject:forKey:


- (void)JQSafeKitSetObject:(id)anObject forKey:(id<NSCopying>)aKey {
    
    @try {
        [self JQSafeKitSetObject:anObject forKey:aKey];
    }
    @catch (NSException *exception) {
        [JQSafeKit noteErrorWithException:exception defaultToDo:JQSafeKitDefaultIgnore];
    }
    @finally {
        
    }
}

//=================================================================
//                       removeObjectForKey:
//=================================================================
#pragma mark - removeObjectForKey:

- (void)JQSafeKitRemoveObjectForKey:(id)aKey {
    
    @try {
        [self JQSafeKitRemoveObjectForKey:aKey];
    }
    @catch (NSException *exception) {
        [JQSafeKit noteErrorWithException:exception defaultToDo:JQSafeKitDefaultIgnore];
    }
    @finally {
        
    }
}



@end
