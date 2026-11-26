#!/bin/bash
# Chuong trinh sao luu va kiem tra file nen
# Duong dan thu muc bai tap
BASE_DIR="$HOME/2400037_NguyenAnhHuy_Linux"

DATA_DIR="$BASE_DIR/data"
BACKUP_DIR="$BASE_DIR/backup"
LOG_DIR="$BASE_DIR/logs"
LOG_FILE="$LOG_DIR/backup.log"

# Tao thu muc backup va logs neu chua co
mkdir -p "$BACKUP_DIR" "$LOG_DIR"

# Lay thoi gian hien tai
TIME=$(date +"%Y%m%d_%H%M%S")

# Ten file sao luu
BACKUP_FILE="backup_$TIME.tar.gz"
BACKUP_PATH="$BACKUP_DIR/$BACKUP_FILE"

echo "===================================="
echo "       CHUONG TRINH SAO LUU DU LIEU"
echo "===================================="

# Kiem tra thu muc data
if [ -d "$DATA_DIR" ]; then

    echo "Tim thay thu muc data."
    echo "Bat dau sao luu..."

    # Nen thu muc data bang tar
    if tar -czf "$BACKUP_PATH" -C "$BASE_DIR" data && tar -tzf "$BACKUP_PATH" > /dev/null 2>&1; then

        echo "Sao luu thanh cong!"
        echo "Ten file: $BACKUP_FILE"

        STATUS="THANH CONG"

    else

        echo "Sao luu that bai!"

        # Xoa file sao luu loi neu co
        rm -f "$BACKUP_PATH"

        STATUS="THAT BAI"

    fi

else

    echo "Khong tim thay thu muc data!"
    STATUS="THAT BAI"

fi

# Ghi lich su vao file log
echo "$(date '+%Y-%m-%d %H:%M:%S') | $BACKUP_FILE | $STATUS" >> "$LOG_FILE"

echo ""
echo "===================================="
echo "       DANH SACH CAC FILE SAO LUU"
echo "===================================="

# Hien thi danh sach file sao luu
if compgen -G "$BACKUP_DIR/*.tar.gz" > /dev/null; then
    ls -lh "$BACKUP_DIR"/*.tar.gz
else
    echo "Chua co file sao luu nao."
fi
