//
//  NSMutableString+JQSafeKit.m
//  JQSafeKitDemo
//
//  Created by HaRi on 2016/10/23.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "NSMutableString+JQSafeKit.h"
#import "JQSafeKit.h"

@implementation NSMutableString (JQSafeKit)

+ (void)JQSafeKitExchangeMethod {
    
    Class stringClass = NSClassFromString(@"__NSCFString");
    
    //replaceCharactersInRange
    [JQSafeKit exchangeInstanceMethod:stringClass method1Sel:@selector(replaceCharactersInRange:withString:) method2Sel:@selector(JQSafeKitReplaceCharactersInRange:withString:)];
    
    //insertString:atIndex:
    [JQSafeKit exchangeInstanceMethod:stringClass method1Sel:@selector(insertString:atIndex:) method2Sel:@selector(JQSafeKitInsertString:atIndex:)];
    
    //deleteCharactersInRange
    [JQSafeKit exchangeInstanceMethod:stringClass method1Sel:@selector(deleteCharactersInRange:) method2Sel:@selector(JQSafeKitDeleteCharactersInRange:)];
}

//=================================================================
//                     replaceCharactersInRange
//=================================================================

#pragma mark - replaceCharactersInRange
- (void)JQSafeKitReplaceCharactersInRange:(NSRange)range withString:(NSString *)aString {
    
    @try {
        [self JQSafeKitReplaceCharactersInRange:range withString:aString];
    }
    @catch (NSException *exception) {
        NSString *defaultToDo = JQSafeKitDefaultIgnore;
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
    }
    @finally {
        
    }
}

//=================================================================
//                     insertString:atIndex:
//=================================================================

#pragma mark - insertString:atIndex:
- (void)JQSafeKitInsertString:(NSString *)aString atIndex:(NSUInteger)loc {
    
    @try {
        [self JQSafeKitInsertString:aString atIndex:loc];
    }
    @catch (NSException *exception) {
        NSString *defaultToDo = JQSafeKitDefaultIgnore;
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
    }
    @finally {
        
    }
}

//=================================================================
//                   deleteCharactersInRange
//=================================================================

#pragma mark - deleteCharactersInRange
- (void)JQSafeKitDeleteCharactersInRange:(NSRange)range {
    
    @try {
        [self JQSafeKitDeleteCharactersInRange:range];
    }
    @catch (NSException *exception) {
        NSString *defaultToDo = JQSafeKitDefaultIgnore;
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
    }
    @finally {
        
    }
}

@end
