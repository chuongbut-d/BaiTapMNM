read -p "Nhập tên user cần kiểm tra: " username
current_user=$(whoami)

if [ "$username" == "$current_user" ]; then
    echo "$username ĐÚNG là user hiện hành."
else
    echo "$username KHÔNG PHẢI user hiện hành (User hiện tại là: $current_user)."
fi
