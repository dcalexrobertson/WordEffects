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
        char x[1];
        
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
        
        //ask user to select option
        printf("Please select one of the following options, \n 1. Make it uppercase.\n 2. Make it lowercase. \n 3. Make it a number.\n 4. Make it Canadian.\n 5. Get a response.\n 6. Make it space-less.\n Choose the number:");
        fgets(x, 1, stdin);
        
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
        
        
        
    }
    return 0;
}
