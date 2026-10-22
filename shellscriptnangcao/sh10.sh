tao_10_users() {
    for i in {1..10}; do
        username="student$i"
        if id "$username" &>/dev/null; then
            echo "User $username đã tồn tại, bỏ qua."
        else
            sudo useradd -m -s /bin/bash "$username"
            echo "$username:Password@123" | sudo chpasswd
            echo "Đã tạo thành công user: $username"
        fi
    done
}
tao_10_users
