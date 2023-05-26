
void vec1_addvv_i32(int * restrict a, int *b) {
  for (unsigned i = 0; i < 1; i++)
    a[i] += b[i];
}

void vec2_addvv_i32(int * restrict a, int *b) {
  for (unsigned i = 0; i < 2; i++)
    a[i] += b[i];
}

void vec3_addvv_i32(int * restrict a, int *b) {
  for (unsigned i = 0; i < 3; i++)
    a[i] += b[i];
}

void vec4_addvv_i32(int * restrict a, int *b) {
  for (unsigned i = 0; i < 4; i++)
    a[i] += b[i];
}

void vec5_addvv_i32(int * restrict a, int *b) {
  for (unsigned i = 0; i < 5; i++)
    a[i] += b[i];
}

void vec6_addvv_i32(int * restrict a, int *b) {
  for (unsigned i = 0; i < 6; i++)
    a[i] += b[i];
}

void vec7_addvv_i32(int * restrict a, int *b) {
  for (unsigned i = 0; i < 7; i++)
    a[i] += b[i];
}

void vec8_addvv_i32(int * restrict a, int *b) {
  for (unsigned i = 0; i < 8; i++)
    a[i] += b[i];
}

typedef int v4int __attribute__ ((vector_size (16)));
typedef long v4long __attribute__ ((vector_size (sizeof(long)*4)));
void vec4_addvv_i32_vector_ext(v4int * restrict a, v4int * restrict b) {
  *a += *b;
}

void vec4_addvv_i32_vector_ext_scalarized(v4long * restrict a,
                                          v4int * restrict b) {
  for (int i = 0; i < 4; i++)
    ((long*)a)[i] += ((int*)b)[i];
}
