BÀI THỰC HÀNH LINUX
1. THÔNG TIN SINH VIÊN
Họ và tên: Nguyễn Anh Huy
Mã sinh viên: 2400037
Lớp: [k4828_CNTT1]
Hệ điều hành: Ubuntu Linux
2. GIỚI THIỆU BÀI THỰC HÀNH

Bài thực hành giúp sinh viên làm quen với hệ điều hành Ubuntu Linux, sử dụng các lệnh quản lý tệp và thư mục, phân quyền, lập trình Shell Script và quản lý mã nguồn bằng Git, GitHub.

3. CẤU TRÚC THƯ MỤC
data/: Lưu trữ dữ liệu sinh viên.
scripts/: Chứa các chương trình Shell Script.
logs/: Lưu kết quả và lịch sử hoạt động.
backup/: Chứa các file sao lưu dữ liệu.
README.md: Tài liệu hướng dẫn sử dụng.
4. MÔ TẢ CHỨC NĂNG CÁC CHƯƠNG TRÌNH
4.1. hethong.sh
Hiển thị tên người dùng và tên máy tính.
Hiển thị ngày giờ hiện tại.
Hiển thị phiên bản Linux Kernel.
Kiểm tra dung lượng RAM và ổ đĩa.
Kiểm tra kết nối mạng bằng ping.
Ghi kết quả vào logs/hethong.log.
4.2. quanlysv.sh
Hiển thị danh sách sinh viên.
Tìm kiếm sinh viên theo mã.
Thống kê sinh viên đạt và không đạt.
Tính điểm trung bình.
Hiển thị sinh viên có điểm cao nhất.
Sắp xếp sinh viên theo điểm giảm dần.
4.3. saoluu.sh
Kiểm tra sự tồn tại của thư mục data.
Nén thư mục data bằng lệnh tar.
Lưu file sao lưu vào thư mục backup.
Kiểm tra kết quả sao lưu.
Ghi lịch sử sao lưu vào logs/backup.log.
Hiển thị danh sách file sao lưu.
5. HƯỚNG DẪN SỬ DỤNG
5.1. Cấp quyền thực thi
bash
chmod +x scripts/hethong.sh
chmod +x scripts/quanlysv.sh
chmod +x scripts/saoluu.sh

5.2. Chạy chương trình kiểm tra hệ thống
bash
./scripts/hethong.sh

5.3. Chạy chương trình quản lý sinh viên
bash
./scripts/quanlysv.sh


Chọn chức năng từ menu và nhập mã sinh viên khi được yêu cầu.

5.4. Chạy chương trình sao lưu dữ liệu
bash
./scripts/saoluu.sh


File sao lưu được lưu trong thư mục backup/ với định dạng .tar.gz.

6. KẾT QUẢ THỰC HIỆN
Hoàn thành quản lý tệp, thư mục và phân quyền.
Hoàn thành chương trình kiểm tra hệ thống.
Hoàn thành chương trình quản lý sinh viên.
Hoàn thành chương trình sao lưu dữ liệu.
Hoàn thành quản lý mã nguồn bằng Git và GitHub.
7. CÔNG CỤ SỬ DỤNG
Ubuntu Linux
GNU Bash Shell
Nano Editor
Git
GitHub
Các lệnh Linux: chmod, mkdir, ls, tar, awk, sort, grep, ping

Sinh viên thực hiện: Nguyễn Anh Huy
