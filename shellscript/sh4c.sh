#!/bin/bash
read -p "Nhập a: " a
read -p "Nhập b: " b

if [ "$a" -eq 0 ] || [ "$b" -eq 0 ]; then
    echo "Một trong hai số bằng 0 (không xét cùng/trái dấu)."
elif [ $(( a * b )) -gt 0 ]; then
    echo "Hai số $a và $b CÙNG DẤU."
else
    echo "Hai số $a và $b TRÁI DẤU."
fi
