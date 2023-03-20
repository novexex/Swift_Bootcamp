//
//  main.m
//  Day04
//
//  Created by Artour Ilyasov on 17.03.2023.
//

#import <Foundation/Foundation.h>
#import "Day04_01.h"

int main() {
    Coffee *cappuccino = [[Coffee alloc] init];
    cappuccino.name = @"Cappuccino";
    cappuccino.price = 2;
    
    Coffee *americano = [[Coffee alloc] init];
    americano.name = @"Americano";
    americano.price = 1.5;
    
    Coffee *latte = [[Coffee alloc] init];
    latte.name = @"Latte";
    latte.price = 2.3;

    printf("Choose coffee in menu:\n");
    printf("1. %s %.1f\n", [cappuccino.name UTF8String], cappuccino.price);
    printf("1. %s %.1f\n", [americano.name UTF8String], americano.price);
    printf("1. %s %.1f\n\n", [latte.name UTF8String], latte.price);
        
    char choise[10];
    int num;
 
    while (1) {
        scanf("%s", choise);
        
        char *endptr;
        long val = strtol(choise, &endptr, 10);
        if (*endptr != '\0' || val > 3 || val < 1) {
            printf("Try again!\n");
            continue;
        } else {
            break;
        }
    }
    printf("\n");
    
    Barista *barista = [[Barista alloc] init];
    
    switch (num) {
        case 1:
            [barista brew:cappuccino];
            break;
        case 2:
            [barista brew:americano];
            break;
        case 3:
            [barista brew:latte];
            break;
        default:
            break;
    }
    
    return 0;
}

