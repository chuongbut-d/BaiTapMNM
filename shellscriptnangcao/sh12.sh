DB_VOICE="voice_database.txt"
touch "$DB_VOICE"
echo "=== HỆ THỐNG XÁC THỰC GIỌNG NÓI ==="
read -p "Mô phỏng: Nhập chuỗi âm thanh / Tên người nói được nhận diện: " voice_sample
# Tìm kiếm trong cơ sở dữ liệu giọng nói
matched_user=$(grep "^$voice_sample:" "$DB_VOICE" | cut -d: -f2)
if [ -n "$matched_user" ]; then
    echo "Nhận diện thành công: Giọng nói thuộc về user '$matched_user'."
    echo "Đang tiến hành chuyển đổi/đăng nhập sang user: $matched_user"
    su - "$matched_user"
else
    echo "Không tìm thấy dữ liệu giọng nói này trong hệ thống!"
    echo "Tiến hành đăng ký người dùng mới:"
    read -p "Họ: " ho
    read -p "Tên: " ten
    read -p "Chức vụ: " chucvu
    read -p "Tên đăng nhập (username) mong muốn: " new_user
    read -s -p "Mật mã tài khoản: " password
    echo ""
    # Tạo user mới trên Linux
    sudo useradd -m -c "$ho $ten, $chucvu" -s /bin/bash "$new_user"
    echo "$new_user:$password" | sudo chpasswd
    
    # Lưu liên kết giữa mẫu giọng nói và username
    echo "$voice_sample:$new_user" >> "$DB_VOICE"
    echo "Đã tạo tài khoản '$new_user' thành công và liên kết dữ liệu nhận diện!"
fi