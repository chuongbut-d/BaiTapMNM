isPrime() {
    local n=$1
    if [ "$n" -lt 2 ]; then
        return 0
    fi
    for (( i=2; i*i<=n; i++ )); do
        if [ $(( n % i )) -eq 0 ]; then
            return 0
        fi
    done
    return 1
}
read -p "Nhập số cần kiểm tra: " num
isPrime "$num"
if [ $? -eq 1 ]; then
    echo "$num là số nguyên tố."
else
    echo "$num không phải là số nguyên tố."
fi