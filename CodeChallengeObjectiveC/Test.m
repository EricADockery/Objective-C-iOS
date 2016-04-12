//
//  Test.m
//  CodeChallengeObjectiveC
//
//  Created by Eric Dockery on 4/8/16.
//
//

#import "Test.h"

@implementation Test
void OddPrinter( NSArray array, int size, int n){
    i = n-1;
    for( i ;i< size; i+=n){
        If ( array[i] %2 != 0){
            NSLog(array[i]);
        }
    }
}
OddPrinter(NSArray array[4] = [1,2,3,4,5,6], int size = 5, int n = 2);


@end
