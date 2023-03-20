//
//  Header.h
//  
//
//  Created by Artour Ilyasov on 17.03.2023.
//

#ifndef Day04_01_h
#define Day04_01_h

@interface Coffee : NSObject

@property NSString *name;
@property double price;

@end




@interface Barista : NSObject

@property NSString *name;
@property NSString *surname;
@property int experience;

- (void)brew:(Coffee*)coffee;

@end


#endif /* Day04_01_h */
