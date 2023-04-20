
typedef signed char int8_t;

// Signed subtract which is not UB on overflow
inline int8_t sub(int8_t a, int8_t b) {
  return (int8_t)((int)a - (int)b);
}

#define POUNDOUT(N) \
int sum_of_squared_diff ## N ##_(int8_t* restrict a, int8_t* restrict b) { \
  int sum = 0;                                                          \
  for (unsigned i = 0; i < N; i++) {                                    \
    int diff = sub(a[i], b[i]);                                         \
    sum += diff*diff;                                                   \
  }                                                                     \
  return sum;                                                           \
}

POUNDOUT(1)
POUNDOUT(2)
POUNDOUT(3)
POUNDOUT(4)
POUNDOUT(5)
POUNDOUT(6)
POUNDOUT(7)
POUNDOUT(8)
