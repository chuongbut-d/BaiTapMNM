kiem_tra_quyen_chay() {
    local f=$1
    if [ ! -e "$f" ]; then
        echo "File $f không tồn tại!"
    elif [ -x "$f" ]; then
        echo "File $f CÓ quyền thực thi (executable)."
    else
        echo "File $f KHÔNG CÓ quyền thực thi."
    fi
}
read -p "Nhập tên file: " filename
kiem_tra_quyen_chay "$filename"