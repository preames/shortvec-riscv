
void vec1_addvv_i64(int * restrict a, int *b) {
  for (unsigned i = 0; i < 1; i++)
    a[i] += b[i];
}

void vec2_addvv_i64(int * restrict a, int *b) {
  for (unsigned i = 0; i < 2; i++)
    a[i] += b[i];
}

void vec3_addvv_i64(int * restrict a, int *b) {
  for (unsigned i = 0; i < 3; i++)
    a[i] += b[i];
}

void vec4_addvv_i64(int * restrict a, int *b) {
  for (unsigned i = 0; i < 4; i++)
    a[i] += b[i];
}

void vec5_addvv_i64(int * restrict a, int *b) {
  for (unsigned i = 0; i < 5; i++)
    a[i] += b[i];
}

void vec6_addvv_i64(int * restrict a, int *b) {
  for (unsigned i = 0; i < 6; i++)
    a[i] += b[i];
}

void vec7_addvv_i64(int * restrict a, int *b) {
  for (unsigned i = 0; i < 7; i++)
    a[i] += b[i];
}

void vec8_addvv_i64(int * restrict a, int *b) {
  for (unsigned i = 0; i < 8; i++)
    a[i] += b[i];
}

typedef int v4int __attribute__ ((vector_size (16)));
void vec4_addvv_i64_vector_ext(v4int * restrict a, v4int * restrict b) {
  *a += *b;
}

