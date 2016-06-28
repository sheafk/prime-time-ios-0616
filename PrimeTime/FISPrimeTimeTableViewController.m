//
//  FISPrimeTimeTableViewController.m
//  PrimeTime
//
//  Created by Shea Furey-King on 6/24/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISPrimeTimeTableViewController.h"
#import "FISAppDelegate.h"

@interface FISPrimeTimeTableViewController ()


@end

@implementation FISPrimeTimeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.accessibilityIdentifier = @"table";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 101;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"primeNumber" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%li", [self primeNumber:indexPath.row+1]]; //need to apply primeNumber method to the indexPath Row...

    return cell;
}
    
- (NSInteger)primeNumber:(NSInteger)prime {
    
    NSMutableArray *catchPrimes = [[NSMutableArray alloc]init];
    NSInteger i = 0;
    
    while ([catchPrimes count] <= prime+1) {
        i+=1;
        BOOL primeCheck = YES;
        for (NSInteger d = 2; d < i; ++d)
        {
            if (i % d == 0) {
                primeCheck = NO;
            }
        }
        
            if (primeCheck) {
//                NSNumber *aPrime = @(i);
                [catchPrimes addObject:@(i)];
            
        }
    }
    
        NSInteger answer = [catchPrimes[prime] intValue];
        return answer;
        
    
}




    
    //    }
    //    do {
    //        for (NSInteger d = 2; d < i; ++d)
    //        {
    //            if (i % d == 0) {
    //                continue;}
    ////            if (i % d != 1) {
    ////                continue;}
    //            else {
    //                NSLog(@"%lu ",(unsigned long)i);
    //                NSNumber *aPrime = @(i);
    //                [catchPrimes addObject:aPrime];
    //
    //                i++;}}
    ////    } while ([catchPrimes count] <= prime+1);


//Test

//-(NSInteger)primeNumber:(NSInteger)prime{
//
//    NSMutableArray *primes  = [[NSMutableArray alloc]init];
//    NSUInteger upperLimit = 100000;
//
//    [primes addObject:[NSDecimalNumber numberWithInt:2]];
//    //Need to turn this loop into a while loop.
//
//    int i = 2;
//    do {
//        bool prime=true;
//        for(int j=0;j<primes.count && (((NSDecimalNumber *)primes[j]).integerValue*((NSDecimalNumber *)primes[j]).integerValue) <= i;j++)
//        {
//            if(i % (((NSDecimalNumber *)primes[j]).integerValue) == 0)
//            {
//                prime=false;
//                break;
//            }
//        }
//        if(prime)
//        {
//            [primes addObject:@(i)];
//        }
//        i++;
//    } while (i < upperLimit); {
//
//    NSInteger result = [primes[prime]integerValue];
//    return result;
//    }
//}

//LOOPS that did not work below.
//int main ()
//{
//    /* local variable definition */
//    int i, j;
//
//    for(i=2; i<100; i++) {
//        for(j=2; j <= (i/j); j++)
//            if(!(i%j)) break; // if factor found, not prime
//        if(j > (i/j)) NSLog(@"%d is prime\n", i);
//    }
//
//    return 0;
//}
//Trying to make do While Loop


@end
