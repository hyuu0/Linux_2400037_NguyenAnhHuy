#!/bin/bash

# Duong dan file du lieu
BASE_DIR="$HOME/2400037_NguyenAnhHuy_Linux"
DATA_FILE="$BASE_DIR/data/sinhvien.txt"

# Kiem tra file du lieu co ton tai khong
if [ ! -f "$DATA_FILE" ]; then
    echo "Khong tim thay file du lieu sinh vien!"
    exit 1
fi

# Chuong trinh quan ly sinh vien
while true
do
    echo ""
    echo "===== CHUONG TRINH QUAN LY SINH VIEN ====="
    echo "1. Hien thi danh sach sinh vien"
    echo "2. Tim kiem sinh vien theo ma"
    echo "3. Thong ke sinh vien dat va khong dat"
    echo "4. Tinh diem trung binh"
    echo "5. Hien thi sinh vien co diem cao nhat"
    echo "6. Sap xep sinh vien theo diem giam dan"
    echo "0. Thoat chuong trinh"
    echo "========================================="
    read -p "Nhap lua chon: " choice

    case "$choice" in

        1)
            echo ""
            echo "DANH SACH SINH VIEN"
            echo "Ma SV | Ho ten | Diem"
            cat "$DATA_FILE"
            ;;

        2)
            echo ""
            read -p "Nhap ma sinh vien can tim: " masv

            result=$(awk -F',' -v ma="$masv" '$1 == ma' "$DATA_FILE")

            if [ -n "$result" ]; then
                echo "Thong tin sinh vien:"
                echo "$result"
            else
                echo "Khong tim thay sinh vien co ma $masv"
            fi
            ;;

        3)
            echo ""
            echo "THONG KE SINH VIEN"

            awk -F',' '
            {
                if ($3 >= 5)
                    dat++
                else
                    khongdat++
            }
            END {
                print "So sinh vien dat: " dat
                print "So sinh vien khong dat: " khongdat
            }
            ' "$DATA_FILE"
            ;;

        4)
            echo ""
            echo "DIEM TRUNG BINH CUA SINH VIEN"

            awk -F',' '
            {
                tong += $3
                dem++
            }
            END {
                if (dem > 0)
                    printf "Diem trung binh: %.2f\n", tong/dem
                else
                    print "Khong co du lieu sinh vien"
            }
            ' "$DATA_FILE"
            ;;

        5)
            echo ""
            echo "SINH VIEN CO DIEM CAO NHAT"

            awk -F',' '
            NR == 1 || $3 > max {
                max = $3
            }
            END {
                print "Diem cao nhat: " max
                print "Thong tin sinh vien:"
            }
            ' "$DATA_FILE"

            awk -F',' '
            NR == 1 || $3 > max {
                max = $3
            }
            {
                if ($3 == max)
                    print $0
            }
            ' "$DATA_FILE"
            ;;

        6)
            echo ""
            echo "DANH SACH SINH VIEN THEO DIEM GIAM DAN"

            sort -t',' -k3,3nr "$DATA_FILE"
            ;;

        0)
            echo "Da thoat chuong trinh!"
            exit 0
            ;;

        *)
            echo "Lua chon khong hop le! Vui long nhap lai."
            ;;
    esac

done
