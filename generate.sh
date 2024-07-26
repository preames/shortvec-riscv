
CLANG=~/llvm-dev/build/bin/clang
BASE_TARGET_OPTS="-target riscv64 -menable-experimental-extensions"

# uncmment if you want command lines
# set -x
base_output_dir="./output"
output_dir="$base_output_dir"
mkdir -p "$output_dir"
#CONFIG_OPTS=" -march=rva22u64_v -mrvv-vector-bits=zvl -mllvm -slp-vectorize-non-power-of-2"
for f in *.c*; do
    echo "Building $f"
    filename=$(basename -- "$f")
    filename="${filename%.*}"

    CONFIG_OPTS=" -march=rva22u64_v -mllvm -slp-vectorize-non-power-of-2"
    mkdir -p "$output_dir/rva22u64_v"
    output_filename="$output_dir/rva22u64_v/$filename"

    $CLANG -S $BASE_TARGET_OPTS $CONFIG_OPTS -O2 -o $output_filename.s $f
    $CLANG -S $BASE_TARGET_OPTS $CONFIG_OPTS -O2 -emit-llvm -o $output_filename.ll $f

    CONFIG_OPTS=" -march=rva22u64_v -mrvv-vector-bits=zvl -mllvm -slp-vectorize-non-power-of-2"
    mkdir -p "$output_dir/rva22u64_v-vls"
    output_filename="$output_dir/rva22u64_v-vls/$filename"

    $CLANG -S $BASE_TARGET_OPTS $CONFIG_OPTS -O2 -o $output_filename.s $f
    $CLANG -S $BASE_TARGET_OPTS $CONFIG_OPTS -O2 -emit-llvm -o $output_filename.ll $f

    CONFIG_OPTS=" -march=rva23u64 -mllvm -slp-vectorize-non-power-of-2"
    mkdir -p "$output_dir/rva23u64"
    output_filename="$output_dir/rva23u64/$filename"

    $CLANG -S $BASE_TARGET_OPTS $CONFIG_OPTS -O2 -o $output_filename.s $f
    $CLANG -S $BASE_TARGET_OPTS $CONFIG_OPTS -O2 -emit-llvm -o $output_filename.ll $f

    CONFIG_OPTS=" -march=rva23u64 -mrvv-vector-bits=zvl -mllvm -slp-vectorize-non-power-of-2"
    mkdir -p "$output_dir/rva23u64-vls"
    output_filename="$output_dir/rva23u64-vls/$filename"

    $CLANG -S $BASE_TARGET_OPTS $CONFIG_OPTS -O2 -o $output_filename.s $f
    $CLANG -S $BASE_TARGET_OPTS $CONFIG_OPTS -O2 -emit-llvm -o $output_filename.ll $f

done
