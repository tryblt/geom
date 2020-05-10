#include "printCoord.h"

bool Coord(std::string str, float& x, float& y, float& r)
{
    std::string strX, strY, strR;
    int o = 0, i, Z, L, R, space;
    
    L = str.find("(");
    R = str.find(")");
    Z = str.find(", ");
    space = str.find(" ");
    if (L != -1 && R != -1 && Z != -1 && space != -1) {
        for (i = L + 1; i < space;) {
            if (check(str, strX, i, o)) {
                ++i;
            } else {
                return false;
            }
        }
        o = 0;
        for (i = space + 1; i < Z;) {
            if (check(str, strY, i, o)) {
                ++i;
            } else {
                return false;
            }
        }
        o = 0;
        for (i = Z + 2; i < R;) {
            if (check(str, strR, i, o)) {
                ++i;
            } else {
                return false;
            }
        }
    } else {
        return false;
    }
    /*x = stof(strX);
    y = stof(strY);
    r = stof(strR);*/
    if (r <= 0) {
        return false;
    }
    return true;
}

bool check(std::string str, std::string& strC, int i, int o)
{
    if (isdigit(str[i]) || str[i] == '.') {
        strC += str[i];
        if (str[i] == '.') {
            o++;
        }
        if (o > 1) {
            return false;
        }

    } else {
        if (isalpha(str[i]) || isascii(str[i])) {
            return false;
        }
    }
    return true;
}
