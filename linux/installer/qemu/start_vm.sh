cgexec -g misc:qemu  qemu-system-x86_64 \
    -nographic -enable-kvm -cpu host,+sgx,+sgx2 \
    -object memory-backend-epc,id=mem1,size=8M,prealloc=on \
    -M sgx-epc.0.memdev=mem1,sgx-epc.0.node=0 \
    -drive file=ubuntu2204-img.qcow2,format=qcow2 \
    -cdrom user-data2.iso \
    -drive file=shared_disk.img \
    -m 4096 -smp 8 $1 \

