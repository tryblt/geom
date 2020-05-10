#include "func.h"
#include <gtest/gtest.h>

TEST(PERIMETER, PerimeterCorrect) {
    ASSERT_FLOAT_EQ(6.28, P(1.));
    ASSERT_FLOAT_EQ(3.14, P(0.5));
}
