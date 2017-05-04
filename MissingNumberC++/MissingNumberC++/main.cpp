//
//  main.cpp
//  MissingNumberC++
//
//  Created by Eugene Tretiakova on 3/2/17.
//  Copyright © 2017 Eugenya. All rights reserved.
//

#include <iostream>
using namespace std;

int* getNumbers(int count)
{
    int* array = new int [count];
    
    for (int i = 0; i < count; i++)
    {
        cin >> array[i];
    }
    return array;
}

int main(int argc, const char * argv[])
{
    int numberA;
    cin >> numberA;
    int* arrayA = getNumbers(numberA);

    
    int numberB;
    cin >> numberB;
    int* arrayB = getNumbers(numberB);
    
    int min = arrayB[0];
    for (int i = 0; i < numberB; i++)
    {
        if (arrayB[i] < min)
        {
            min = arrayB[i];
        }
    }
    
    int* result = new int[101];
    for (int i = 0; i < 101; i++)
    {
        result[i] = 0;
    }
    
    for (int i = 0; i < numberB; i++)
    {
        result[arrayB[i]-min]++;
    }
    
    for (int i = 0; i < numberA; i++)
    {
        result[arrayA[i]-min]--;
    }
    for (int i = 0; i < 101; i++)
    {
        if (result[i] != 0)
        {
            cout << min+i << " ";
        }
    }
    
    return 0;
}

