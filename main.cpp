#include <iostream>
#include <math.h>
using namespace std;
float pi = 3.14;
void Coord(int x, int y, int r)
{
    cout << "Circle(" << x << " " << y << ", " << r << ")" << endl;
}

float P(int r)
{
    float p = 2 * pi * r;
    return p;
}

float S(int r)
{
    float s = pi * pow(r, 2);
    return s;
}

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
