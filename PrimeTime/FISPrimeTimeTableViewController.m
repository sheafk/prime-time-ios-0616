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
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    
    
    
    // Configure the cell...
    
    return cell;
}

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
//- (NSInteger)primeNumber:(NSInteger)prime {
//    
//    NSMutableArray *catchPrimes = [[NSMutableArray alloc]init];
//    
//    // while catchPrimes array count is less than 3, keep going
//    //for (NSInteger i = 0; i < prime; i++)
//    NSInteger i = 0;
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
//    } while ([catchPrimes count] < prime);
//    
//    NSInteger answer = [catchPrimes[prime] intValue];
//    
//    return answer;
//}

//Testing from alex
-(NSInteger)primeNumber:(NSInteger)prime{
    
    NSMutableArray *primes  = [[NSMutableArray alloc]init];
    NSUInteger upperLimit = 18000;
    
    [primes addObject:[NSDecimalNumber numberWithInt:2]];
    for(int i=2; i < upperLimit; i++)
    {
        bool prime=true;
        for(int j=0;j<primes.count && (((NSDecimalNumber *)primes[j]).integerValue*((NSDecimalNumber *)primes[j]).integerValue) <= i;j++)
        {
            if(i % (((NSDecimalNumber *)primes[j]).integerValue) == 0)
            {
                prime=false;
                break;
            }
        }
        if(prime)
        {
            [primes addObject:[NSDecimalNumber numberWithInt:i]];
        }
    }
    NSInteger result = [primes[prime]integerValue];
    return result;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
