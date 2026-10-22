read -p "Nhập đường dẫn thư mục làm việc: " dir_path

if [ -d "$dir_path" ] && [ -w "$dir_path" ]; then
    echo "Vùng làm việc hợp lệ (thư mục tồn tại và có quyền ghi)."
else
    echo "Vùng làm việc KHÔNG hợp lệ (thư mục không tồn tại hoặc không thể ghi)."
fi
