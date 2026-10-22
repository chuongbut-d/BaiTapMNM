read -p "Nhập a: " a
read -p "Nhập b: " b
if [ "$b" -eq 0 ]; then
    echo "Lỗi: Không thể chia cho 0!"
else
    du=$(( a % b ))
    echo "Phần dư của $a chia $b là: $du"
fi