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
            int inputNumber;
            
            printf("Input a string: ");
            fgets(inputChars, 255,stdin);
            printf("Input a number: ");
            scanf("%i",&inputNumber);
            getchar();
            printf("Your string is %s\n.\n", inputChars);
            NSMutableString *inputString = [NSMutableString stringWithUTF8String:inputChars];
            NSString* outputString;
            if (inputNumber == 1) {
                outputString = [inputString uppercaseString];
            } else if (inputNumber == 2) {
                outputString = [inputString lowercaseString];
            } else if (inputNumber == 3) {
                if ([inputString intValue] != 0 || [inputString  isEqual: @"0"]) {
                    outputString = inputString;
                } else {
                    outputString = @"Cannot convert to int.";
                }
            } else if (inputNumber == 4) {
                outputString = [inputString stringByAppendingString:@",eh?"];
            } else if (inputNumber == 5) {
                NSString* lastChar = [inputString substringFromIndex:[inputString length] - 2];
                
                
                if ([[lastChar substringWithRange:NSMakeRange(0, 1)] isEqual:@"?"]) {
                    outputString = @"I don't know.";
                } else if ([[lastChar substringWithRange:NSMakeRange(0, 1)] isEqual:@"!"]) {
                    outputString = @"Whoa,calm down!";
                }
                NSLog(@"output is %@",outputString);
            } else if (inputNumber == 6) {
                outputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            } else {
                outputString = @"invalid.";

            }
            NSLog(@"Output: %@", outputString);
        }
    }
    return 0;
}
