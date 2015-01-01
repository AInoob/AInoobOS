if [[ "$#" -eq 1 ]]; then
    nasm $1 -o temp.bin
    dd if=temp.bin of=a.img bs=512 count=1 conv=notrunc
else
    echo "not yet supported"
fi
