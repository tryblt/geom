#include "func.h"
#include <gtest/gtest.h>

TEST(PERIMETER, PerimeterCorrect) {
    ASSERT_FLOAT_EQ(6.28, P(1));
    ASSERT_FLOAT_EQ(3.14, P(0.5));
	ASSERT_FLOAT_EQ(0.05024, P(0.008));
    ASSERT_FLOAT_EQ(39.4384, P(6.28));
}

TEST(AREA, AreaCorrect) {
    ASSERT_FLOAT_EQ(28.26, S(3));
    ASSERT_FLOAT_EQ(0.0314, S(0.1));
    ASSERT_FLOAT_EQ(12.56, S(2));
    ASSERT_FLOAT_EQ(12.2852, S(1.978));
}
