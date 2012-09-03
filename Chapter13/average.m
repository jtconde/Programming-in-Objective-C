#import <Foundation/Foundation.h>

// Function prototype
float calculateAverage(float A[], int n);

int main()
{
    float array[11] = { 3.44, 455.4, 4.0, 2.4, 2, 5, 1, 294, 2, 35.4, 55 };
    NSLog(@"The average of this array is %.2f",
        calculateAverage(array, 11));

    return 0;
}

float calculateAverage(float A[], int n)
{
    float sum = 0.0;
    float* arrayPtr, *arrayEnd = A + n;

    for (arrayPtr = A; arrayPtr < arrayEnd; ++arrayPtr) {
        sum+= *arrayPtr;
    }

    return (sum / n);
}
