
typedef signed char int8_t;

// Signed subtract which is not UB on overflow
inline int8_t sub(int8_t a, int8_t b) {
  return (int8_t)((int)a - (int)b);
}

inline int8_t myabs(int8_t c) {
  // Note: Assumes C != INT_MIN
  return (c < 0) ? sub(0,c) : c;
}

#define POUNDOUT(N) \
  int sum_of_absolute_diff ## N ##_(int8_t* restrict a, int8_t* restrict b) { \
  int sum = 0; \
  for (unsigned i = 0; i < N; i++) \
    sum += myabs(sub(a[i*64], b[i*64])); \
  return sum; \
}

POUNDOUT(1)
POUNDOUT(2)
POUNDOUT(3)
POUNDOUT(4)
POUNDOUT(5)
POUNDOUT(6)
POUNDOUT(7)
POUNDOUT(8)
