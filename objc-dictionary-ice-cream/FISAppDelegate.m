//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSLog(@"This is the argument ice cream flavor: %@", iceCream);
  
    
    NSDictionary *namesForIceCreamFlavor = @{ @"Joe"   : @"Peanut Butter and Chocolate",
                                             @"Tim"    : @"Natural Vanilla"            ,
                                             @"Sophie" : @"Mexican Chocolate"          ,
                                             @"Deniz"  : @"Natural Vanilla"           ,
                                             @"Tom"    : @"Mexican Chocolate"          ,
                                             @"Jim"    : @"Natural Vanilla"            ,
                                             @"Mark"   : @"Cookies 'n Cream"          };
   
    NSLog(@"This is the argument ice cream flavor two %@", namesForIceCreamFlavor);
    
    NSArray *namesForIceCream = [namesForIceCreamFlavor allKeysForObject:iceCream];
    
    
    return namesForIceCream;

    }

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *numberOfPeopleWhoLikesThisFlavor = [[NSMutableDictionary alloc]init];
    NSArray *iceCreamFlavor = [iceCreamByName allValues];
    for (NSUInteger i = 0; i < [iceCreamFlavor count]; i++) {
        NSArray *returnArrayIceCream = [self namesForIceCream:iceCreamFlavor[i]];
        NSNumber *countNames = @([returnArrayIceCream count]);
        numberOfPeopleWhoLikesThisFlavor[iceCreamFlavor[i]] = countNames;
    }


return numberOfPeopleWhoLikesThisFlavor;
}

@end
