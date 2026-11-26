#!/bin/bash

# Xac dinh thu muc bai tap
BASE_DIR="$HOME/2400037_NguyenAnhHuy_Linux"
LOG_FILE="$BASE_DIR/logs/hethong.log"

# Ghi ket qua ra man hinh va file log
exec > >(tee "$LOG_FILE") 2>&1

echo "===================================="
echo "       KIEM TRA THONG TIN HE THONG"
echo "===================================="

# 1. Hien thi thong tin co ban
echo ""
echo "1. THONG TIN HE THONG"
echo "Ten nguoi dung: $(whoami)"
echo "Ten may tinh: $(hostname)"
echo "Ngay gio hien tai: $(date)"
echo "Phien ban Linux Kernel: $(uname -r)"

# 2. Hien thi RAM
echo ""
echo "2. DUNG LUONG RAM"
free -h

# 3. Hien thi dung luong o dia
echo ""
echo "3. DUNG LUONG O DIA"
df -h

# 4. Kiem tra ket noi mang
echo ""
echo "4. KIEM TRA KET NOI MANG"

if ping -c 4 -W 2 google.com.vn; then
    echo "Co ket noi mang"
else
    echo "Khong xac nhan duoc ket noi mang"
fi

echo ""
echo "===================================="
echo "       KIEM TRA HOAN TAT"
echo "===================================="
