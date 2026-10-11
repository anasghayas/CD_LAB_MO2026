#include <stdio.h>
int main()
{ int a, b, c, d, i, j, k;
  int x[11] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110};
  for (int k = 0; k < 10; k++)
  { a = 2; b = 3; c = 40; d = 5;
    for ( i = 0; i < 11; i+=2 )
    { a++;
      while (i%2 ==1) {a = a * b; x[i] = x[i+1] + d; c = 10*b; }
      a = a * b; d = c * c; x[(i+d)%11] = x[i]+x[i-1];
    };
    if (a < 2) for (j = 1; j < 11; j++) x[j]=x[j]+5;
    else {  x[5]+= d;
            while (a + b > 10) {a++; b++;}
         };
   };
   printf(" a = %d x[7] = %d d = %d\n", a, x[7], d);
   return 0;
}
