
CLANG=~/llvm-dev/build/bin/clang
BASE_TARGET_OPTS="-target riscv64 -march=rv64gcv_zba_zbb_zbc_zbs"

# uncmment if you want command lines
# set -x
base_output_dir="./output"
output_dir="$base_output_dir"
mkdir -p "$output_dir"
CONFIG_OPTS=" -mllvm -riscv-v-slp-max-vf=0"
for f in *.c*; do
    echo "Building $f"
    filename=$(basename -- "$f")
    filename="${filename%.*}"
    output_filename="$output_dir/$filename"

    $CLANG -S $BASE_TARGET_OPTS $CONFIG_OPTS -O2 -o $output_filename.s $f
    $CLANG -S $BASE_TARGET_OPTS $CONFIG_OPTS -O2 -emit-llvm -o $output_filename.ll $f
done
