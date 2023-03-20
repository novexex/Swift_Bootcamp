//
//  Day04_02.m
// 
//
//  Created by Artour Ilyasov on 17.03.2023.
//

#import <Foundation/Foundation.h>
#import "Day04_02.h"

@implementation Barista

- (instancetype)init {
    self = [super init];
    if (self) {
        _name = @" ";
        _surname = @" ";
    }
    return self;
}

- (void)brew:(Coffee*)coffee {
    printf("Proccesing brewing coffee...\n");
    printf("Your %s is ready!\n", [coffee.name UTF8String]);
}

@end

@implementation Coffee

- (instancetype)init {
    self = [super init];
    if (self) {
        _name = @" ";
        _price = 0;
    }
    return self;
}

@end
