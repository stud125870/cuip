#include <iostream>
#include "math.h"

using namespace std;

extern "C" float funcasm(int x, int y);
extern "C" float funcC(int x);

int main()
{
    int x, y;

   cout << "Input x: " << endl;
    cin >> x;
    cout << "Input y: " << endl;
    cin >> y;


    float R = funcasm(x,y);
          
    cout << "Result: " << R << endl;
    return 0;


    float f;
    f = ((cos(x) + sin(x)) / exp(x));
    return f;

}

