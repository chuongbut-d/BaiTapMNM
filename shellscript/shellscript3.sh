sudo usermod -aG customer admin1
echo "thong tin group admin:"
getent group admin
echo "thong tin group customer:"
getent group customer
