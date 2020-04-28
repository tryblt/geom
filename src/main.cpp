#include "func.h"
#include "printCoord.h"
#include <iostream>
#include <math.h>

using namespace std;

int main()
{
    int x, y, r, x1, y1, r1;
    cout << "Enter coord of 1 circle: ";
    cin >> x >> y >> r;
    cout << "Enter coord of 2 circle: ";
    cin >> x1 >> y1 >> r1;

    cout << "1. ";
    Coord(x, y, r);
    cout << "\nS: " << S(r) << "\nP: " << P(r) << endl;

    cout << "2. ";
    Coord(x1, y1, r1);
    cout << "\nS: " << S(r1) << "\nP: " << P(r1) << endl;

    return 0;
}
