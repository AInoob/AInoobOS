case "$#" in
    0)
        echo "c" | bochs
        ;;
    1)
        nasm $1 -o temp.bin
        dd if=temp.bin of=a.img bs=512 count=1 conv=notrunc
        echo "c" | bochs
        ;;
    2)
        echo "2"
        ;;
    *)
        echo "not supported yet"
        ;;
esac
