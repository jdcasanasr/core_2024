#include <stdio.h>

int main()
{
    int array[] = {30, 15, 20, 7, 3};
    int n       = 5;
    int temporal, i, j;

    // Print Unsorted Array.
    printf("Unsorted array: ");
    
    for (int i = 0; i < n; i++)
    {
        printf("%d ", array[i]);
    }
    
    printf("\n");

    // Iterate Up to (n - 1) Times
    for (int i = 0; i < n - 1; i++)
    {
        // Iterate Over the Whole Array Each Time.
        for (int j = 0; j < n - i - 1; j++)
        {
            // Check If We Need to Swap Contiguous Elements.
            if (array[j] > array[j + 1])
            {
                temporal      = array[j];
                array[j]      = array[j + 1];
                array[j + 1]  = temporal;
            }
        }
    }

    // Print Sorted Array.
    printf("Sorted array: ");
    
    for (i = 0; i < n; i++)
    {
        printf("%d ", array[i]);
    }
    
    printf("\n");

    return 0;
}

