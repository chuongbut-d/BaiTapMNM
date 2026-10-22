#!/bin/bash
read -p "Nhập hệ số a: " a
read -p "Nhập hệ số b: " b

if [ "$a" -eq 0 ]; then
    if [ "$b" -eq 0 ]; then
        echo "Phương trình có vô số nghiệm."
    else
        echo "Phương trình vô nghiệm."
    fi
else
    # Sử dụng bc để tính toán số thập phân chính xác
    x=$(echo "scale=2; -($b) / $a" | bc -l)
    echo "Nghiệm của phương trình $a*x + $b = 0 là: x = $x"
fi
