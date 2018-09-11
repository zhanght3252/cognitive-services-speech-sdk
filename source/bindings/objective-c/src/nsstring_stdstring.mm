//
// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE.md file in the project root for full license information.
//

#import "nsstring_stdstring.h"

@implementation NSString (STL)

- (std::string)string
{
    return [self UTF8String];
}

+ (instancetype)stringWithString:(const std::string&)str
{
    return [[NSString alloc] initWithUTF8String: str.c_str()];
}

@end