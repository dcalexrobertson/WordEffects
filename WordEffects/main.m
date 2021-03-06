//
//  main.m
//  WordEffects
//
//  Created by Alex on 2015-10-19.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        // 255 unit long array of characters
        char inputChars[255];
        
        //variable to hold user's selection
        char option1[255];
        
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
        
        // convert char array to an NSString object
        NSMutableString *inputString = [NSMutableString stringWithUTF8String:inputChars];
        [[inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""] mutableCopy];
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
        
        while (true) {
            //ask user to select option
            printf("Please select one of the following options, \n 1. Make it uppercase.\n 2. Make it lowercase. \n 3. Make it a number.\n 4. Make it Canadian.\n 5. Get a response.\n 6. Make it space-less.\n 7. Count the words.\n 8. Remove punctuation.\n 0. Quit program. Choose the number:");
            fgets(option1, 255, stdin);
            
            //converting to NSString and removing \n
            NSMutableString *option = [NSMutableString stringWithUTF8String:option1];
            NSMutableString *option2 = [[option stringByReplacingOccurrencesOfString:@"\n" withString:@""] mutableCopy];
            
            if ([option2 isEqualToString:@"1"]) {
                
                NSString *uppercasedString = [inputString uppercaseString];
                NSLog(@"%@ is the result. It's memory address is %p", uppercasedString, uppercasedString);
                
            } else if ([option2 isEqualToString:@"2"]) {
                
                NSString *lowercasedString = [inputString lowercaseString];
                NSLog(@"%@ is the result. It's memory address is %p", lowercasedString, lowercasedString);
                
            } else if ([option2 isEqualToString:@"3"]) {
                
                int number = [inputString intValue];
                NSLog(@"%d is the result. It's memory address is %p", number, &number);
                
            } else if ([option2 isEqualToString:@"4"]) {
                
                [inputString appendString:@", eh?"];
                NSLog(@"%@ is the result. It's memory address is %p", inputString, inputString);
                
            } else if ([option2 isEqualToString:@"5"]) {
                
                //logging last char for response option
                char x = [inputString characterAtIndex:[inputString length] - 1];
                NSMutableString *x1 = [NSMutableString stringWithUTF8String:&x];
                
                if ([x1 isEqualToString:@"?"]) {
                    NSLog(@"I don't know.");
                } else if ([x1 isEqualToString:@"!"]) {
                    NSLog(@"Whoa, calm down!");
                } else {
                    NSLog(@"Cannot respond to string");
                }
                
            } else if ([option2 isEqualToString:@"6"]) {
                
                NSMutableString *spacelessString = [[inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"] mutableCopy];
                NSLog(@"%@ is the result. It's memory address is %p", spacelessString, spacelessString);
                
            } else if ([option2 isEqualToString:@"7"]) {
                
                NSArray *wordCount = [inputString componentsSeparatedByString:@" "];
                NSInteger words = [wordCount count];
                NSLog(@"%ld is the result. It's memory address is %p", (long)words, &words);
                
                
            } else if ([option2 isEqualToString:@"8"]) {
                
                NSMutableString *newStr = [[inputString stringByReplacingOccurrencesOfString:@"." withString:@""] mutableCopy];
                 newStr = [[newStr stringByReplacingOccurrencesOfString:@"," withString:@""] mutableCopy];
                 newStr = [[newStr stringByReplacingOccurrencesOfString:@"!" withString:@""] mutableCopy];
                 newStr = [[newStr stringByReplacingOccurrencesOfString:@"?" withString:@""] mutableCopy];
                 newStr = [[newStr stringByReplacingOccurrencesOfString:@":" withString:@""] mutableCopy];
                 newStr = [[newStr stringByReplacingOccurrencesOfString:@";" withString:@""] mutableCopy];
                
                NSLog(@"%@ is the result. It's memory address is %p", newStr, newStr);

                
            } else if ([option2 isEqualToString:@"0"]) {
                
                break;
                
            } else {
                
                printf("That is not a valid option. ");
                
            }
        }
        
    }
    return 0;
}
