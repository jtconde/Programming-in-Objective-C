// ex2.m -- identifies a class for the Car object

#import <Foundation/Foundation.h>

//---- interface section ----//
@interface Car: NSObject

- (void) printCarInfo;
- (double) getGas;
- (double) getPrice;
- (void) setGas: (double) gallons;
- (void) setPrice: (double) amount;

@end

//---- implementation section ----//
@implementation Car
{
    double gas;
    double price;
}

- (void) printCarInfo
{
    NSLog (@"This car has %f gallons of gas.", gas);
    NSLog (@"This car costs $%f.", price);
}

- (double) getGas
{
    return gas;
}

- (double) getPrice
{
    return price;
}

- (void) setGas: (double) gallons
{
    gas = gallons;
}

- (void) setPrice: (double) amount
{
    price = amount;
}

@end

//---- program section ----//
int main(int argc, char const *argv[])
{

    @autoreleasepool {
        Car *myCar;

        myCar = [[Car alloc] init];

        // Set gas and price of the Car.
        [myCar setGas: 20.4];
        [myCar setPrice: 47999.99];

        // Display information about the Car.
        [myCar printCarInfo];
    }

    return 0;
}