

#define POUNDOUT(N) \
int reduce ## N ##_add_i32(int* a) { \
  int sum = 0; \
  for (unsigned i = 0; i < N; i++) \
    sum += a[i]; \
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
