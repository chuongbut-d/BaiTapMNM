quan_ly_file_mat_ma() {
    read -s -p "Nhập mã định danh/mật mã: " pass
    echo ""
    # Băm mã bí mật để làm tên file an toàn
    file_id="script_$(echo -n "$pass" | md5sum | awk '{print $1}').sh"
    if [ -f "$file_id" ]; then
        echo "Tìm thấy file đã lưu tương ứng với mật mã này!"
        read -p "Bạn muốn [1] Chạy luôn hay [2] Chỉnh sửa thêm nội dung? (1/2): " opt
        if [ "$opt" == "2" ]; then
            echo "Nhập dòng lệnh mới muốn bổ sung:"
            read new_cmd
            echo "$new_cmd" >> "$file_id"
            echo "Đã cập nhật file."
        fi
        echo "Đang thực thi file..."
        bash "$file_id"
    else
        echo "Chưa có file cho mật mã này. Đang tạo mới..."
        echo "#!/bin/bash" > "$file_id"
        echo "echo 'Xin chào! Mã định danh của bạn đã được xác thực.'" >> "$file_id"
        chmod +x "$file_id"
        echo "Đã tạo file $file_id. Đang thực thi..."
        ./"$file_id"
    fi
}
quan_ly_file_mat_ma