if [[ "$#" -eq 1 ]]; then
    dd if=$1 of=a.img bs=512 count=1 conv=notrunc
else
    echo $#
    dd if=$1 of=$2 bs=512 count=1 conv=notrunc
fi
