dem_file_va_folder() {
    local dir=${1:-.} 
    if [ ! -d "$dir" ]; then
        echo "$dir không phải là thư mục hợp lệ!"
        return 1
    fi
    count_file=$(find "$dir" -maxdepth 1 -type f | wc -l)
    count_dir=$(find "$dir" -mindepth 1 -maxdepth 1 -type d | wc -l)
    echo "Tại thư mục '$dir':"
    echo "- Số lượng file: $count_file"
    echo "- Số lượng thư mục con: $count_dir"
}
read -p "Nhập thư mục cần đếm: " target_dir
dem_file_va_folder "$target_dir"