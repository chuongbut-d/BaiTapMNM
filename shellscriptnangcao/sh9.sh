tao_va_chay_script() {
    local filename="temp_script.sh"
    
    # Ghi nội dung vào file
    cat << 'EOF' > "$filename"
#!/bin/bash
echo "=== Script con đang chạy thành công! ==="
echo "Ngày giờ hiện tại: $(date)"
EOF
    # Cấp quyền thực thi
    chmod +x "$filename"
    echo "Đã tạo và cấp quyền cho $filename. Đang thực thi..."
    
    # Chạy file
    ./"$filename"
}
tao_va_chay_script
