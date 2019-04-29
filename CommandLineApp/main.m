//
//  main.m
//  CommandLineApp
//
//  Created by Dayson Dong on 2019-04-29.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        while (true) {
            char inputChars[255];
            printf("Input a string: ");
            fgets(inputChars, 255,stdin);
            printf("Your string is %s\n", inputChars);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSLog(@"Input was: %@", inputString);
        }
    }
    return 0;
}
