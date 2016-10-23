//
//  NSString+JQSafeKit.m
//  JQSafeKitDemo
//
//  Created by HaRi on 2016/10/23.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "NSString+JQSafeKit.h"
#import "JQSafeKit.h"

@implementation NSString (JQSafeKit)

+ (void)JQSafeKitExchangeMethod {
    
    Class stringClass = NSClassFromString(@"__NSCFConstantString");
    
    //characterAtIndex
    [JQSafeKit exchangeInstanceMethod:stringClass method1Sel:@selector(characterAtIndex:) method2Sel:@selector(JQSafeKitCharacterAtIndex:)];
    
    //substringFromIndex
    [JQSafeKit exchangeInstanceMethod:stringClass method1Sel:@selector(substringFromIndex:) method2Sel:@selector(JQSafeKitSubstringFromIndex:)];
    
    //substringToIndex
    [JQSafeKit exchangeInstanceMethod:stringClass method1Sel:@selector(substringToIndex:) method2Sel:@selector(JQSafeKitSubstringToIndex:)];
    
    //substringWithRange:
    [JQSafeKit exchangeInstanceMethod:stringClass method1Sel:@selector(substringWithRange:) method2Sel:@selector(JQSafeKitSubstringWithRange:)];
    
    //stringByReplacingOccurrencesOfString:
    [JQSafeKit exchangeInstanceMethod:stringClass method1Sel:@selector(stringByReplacingOccurrencesOfString:withString:) method2Sel:@selector(JQSafeKitStringByReplacingOccurrencesOfString:withString:)];
    
    //stringByReplacingOccurrencesOfString:withString:options:range:
    [JQSafeKit exchangeInstanceMethod:stringClass method1Sel:@selector(stringByReplacingOccurrencesOfString:withString:options:range:) method2Sel:@selector(JQSafeKitStringByReplacingOccurrencesOfString:withString:options:range:)];
    
    //stringByReplacingCharactersInRange:withString:
    [JQSafeKit exchangeInstanceMethod:stringClass method1Sel:@selector(stringByReplacingCharactersInRange:withString:) method2Sel:@selector(JQSafeKitStringByReplacingCharactersInRange:withString:)];
    
}

//=================================================================
//                           characterAtIndex:
//=================================================================

#pragma mark - characterAtIndex:
- (unichar)JQSafeKitCharacterAtIndex:(NSUInteger)index {
    
    unichar characteristic;
    @try {
        characteristic = [self JQSafeKitCharacterAtIndex:index];
    }
    @catch (NSException *exception) {
        
        NSString *defaultToDo = @"This framework default is to return a without assign unichar.";
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
    }
    @finally {
        return characteristic;
    }
}

//=================================================================
//                           substringFromIndex:
//=================================================================

#pragma mark - substringFromIndex:
- (NSString *)JQSafeKitSubstringFromIndex:(NSUInteger)from {
    
    NSString *subString = nil;
    
    @try {
        subString = [self JQSafeKitSubstringFromIndex:from];
    }
    @catch (NSException *exception) {
        
        NSString *defaultToDo = JQSafeKitDefaultReturnNil;
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
        subString = nil;
    }
    @finally {
        return subString;
    }
}

//=================================================================
//                           substringToIndex
//=================================================================

#pragma mark - substringToIndex
- (NSString *)JQSafeKitSubstringToIndex:(NSUInteger)to {
    
    NSString *subString = nil;
    
    @try {
        subString = [self JQSafeKitSubstringToIndex:to];
    }
    @catch (NSException *exception) {
        NSString *defaultToDo = JQSafeKitDefaultReturnNil;
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
        subString = nil;
    }
    @finally {
        return subString;
    }
}

//=================================================================
//                           substringWithRange:
//=================================================================
#pragma mark - substringWithRange:

- (NSString *)JQSafeKitSubstringWithRange:(NSRange)range {
    
    NSString *subString = nil;
    
    @try {
        subString = [self JQSafeKitSubstringWithRange:range];
    }
    @catch (NSException *exception) {
        NSString *defaultToDo = JQSafeKitDefaultReturnNil;
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
        subString = nil;
    }
    @finally {
        return subString;
    }
}

//=================================================================
//                stringByReplacingOccurrencesOfString:
//=================================================================
#pragma mark - stringByReplacingOccurrencesOfString:

- (NSString *)JQSafeKitStringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement {
    
    NSString *newStr = nil;
    
    @try {
        newStr = [self JQSafeKitStringByReplacingOccurrencesOfString:target withString:replacement];
    }
    @catch (NSException *exception) {
        NSString *defaultToDo = JQSafeKitDefaultReturnNil;
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
        newStr = nil;
    }
    @finally {
        return newStr;
    }
}

//=================================================================
//  stringByReplacingOccurrencesOfString:withString:options:range:
//=================================================================

#pragma mark - stringByReplacingOccurrencesOfString:withString:options:range:
- (NSString *)JQSafeKitStringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange {
    
    NSString *newStr = nil;
    
    @try {
        newStr = [self JQSafeKitStringByReplacingOccurrencesOfString:target withString:replacement options:options range:searchRange];
    }
    @catch (NSException *exception) {
        NSString *defaultToDo = JQSafeKitDefaultReturnNil;
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
        newStr = nil;
    }
    @finally {
        return newStr;
    }
}

//=================================================================
//       stringByReplacingCharactersInRange:withString:
//=================================================================

#pragma mark - stringByReplacingCharactersInRange:withString:
- (NSString *)JQSafeKitStringByReplacingCharactersInRange:(NSRange)range withString:(NSString *)replacement {
    
    NSString *newStr = nil;
    
    @try {
        newStr = [self JQSafeKitStringByReplacingCharactersInRange:range withString:replacement];
    }
    @catch (NSException *exception) {
        NSString *defaultToDo = JQSafeKitDefaultReturnNil;
        [JQSafeKit noteErrorWithException:exception defaultToDo:defaultToDo];
        newStr = nil;
    }
    @finally {
        return newStr;
    }
}

@end
