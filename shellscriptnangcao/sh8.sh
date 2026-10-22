dem_so_user() {
    local total_users=$(awk -F: '$3 >= 1000 && $3 != 65534 {print $1}' /etc/passwd)
    echo "Tổng số user trong hệ thống: $total_users"
}
dem_so_user