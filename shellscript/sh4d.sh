#!/bin/bash
read -p "Nhập a: " a
read -p "Nhập b: " b
read -p "Nhập c: " c

max=$a

if [ "$b" -gt "$max" ]; then
    max=$b
fi

if [ "$c" -gt "$max" ]; then
    max=$c
fi

echo "Số lớn nhất trong 3 số ($a, $b, $c) là: $max"
