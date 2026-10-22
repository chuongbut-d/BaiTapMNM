tao_cay_thu_muc() {
    read -p "Nhập đường dẫn cây thư mục muốn tạo (vd: app/src/controllers): " tree_path
    if mkdir -p "$tree_path"; then
        echo "Đã tạo thành công cây thư mục: $tree_path"
    else
        echo "Tạo cây thư mục thất bại!"
    fi
}
tao_cay_thu_muc