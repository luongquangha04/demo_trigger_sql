# demo_trigger_sql
Bài tập 5 k225480106010  Lương Quang Hà môn HQT CSDL
SUBJECT: Trigger on mssql

# A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
# B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

# bài làm
# mô tả bài toán
Siêu thị là nơi kinh doanh, buôn bán đa dạng các mặt hàng khác nhau như thực phẩm, đồ uống, hóa mỹ phẩm, vật dụng gia đình, điện tử, v.v. Với số lượng sản phẩm rất lớn và nhiều biến động nhập - xuất hàng ngày, việc quản lý kho một cách thủ công gặp nhiều khó khăn, dễ xảy ra sai sót và thiếu chính xác.

Để giải quyết vấn đề này, cần xây dựng một hệ thống quản lý kho siêu thị giúp theo dõi số lượng hàng hóa tồn kho, tình trạng nhập - xuất, số lượng thực tế, cũng như hỗ trợ tra cứu và báo cáo nhanh chóng, chính xác.

Hệ thống này không chỉ giúp nhân viên kho dễ dàng kiểm soát số lượng hàng hóa mà còn hỗ trợ ban quản lý siêu thị ra quyết định nhập hàng, điều chỉnh tồn kho phù hợp với nhu cầu và hạn chế tối đa thất thoát.

B. Yêu cầu của bài toán
1. Về chức năng
Hệ thống cần đảm bảo các chức năng cơ bản sau:

Quản lý sản phẩm: Thêm mới, sửa, xóa thông tin sản phẩm (mã sản phẩm, tên sản phẩm, đơn giá, mô tả…).

Quản lý nhập kho: Thêm thông tin các đợt nhập hàng, cập nhật số lượng tồn kho.

Quản lý xuất kho: Thêm thông tin các đợt xuất hàng, trừ số lượng tồn kho.

Quản lý kho: Theo dõi số lượng hàng hóa thực tế đang còn trong kho, tự động cập nhật tồn kho khi có phát sinh nhập/xuất.

Tra cứu & báo cáo: Tra cứu tồn kho theo sản phẩm, xem lịch sử nhập - xuất, thống kê tồn kho, báo cáo số liệu.

2. Về dữ liệu
Xây dựng Cơ sở dữ liệu quan hệ gồm các bảng:

SanPham (MaSP, TenSP, Gia, MoTa)

NhapKho (MaNK, MaSP, SoLuongNhap, NgayNhap)

XuatKho (MaXK, MaSP, SoLuongXuat, NgayXuat)

Kho (MaSP, SoLuong)

Log (ID, ThoiGian, SuKien, NoiDung)

Các bảng được thiết kế chuẩn hóa tới 3NF, có đầy đủ:

Khóa chính (PK)

Khóa ngoại (FK)

Ràng buộc kiểm tra (Check)

Trigger tự động cập nhật tồn kho khi phát sinh nhập, xuất.

3. Yêu cầu kỹ thuật
CSDL thiết kế bằng SQL Server

Viết trigger tự động cập nhật số lượng tồn kho khi có phát sinh nhập kho, xuất kho.

Có thể mở rộng với các tính năng:

Ghi log sự kiện

Cảnh báo tồn kho thấp

Báo cáo nhanh theo tháng/quý/năm

# cơ sở dữ liệu
bảng kho 
![image](https://github.com/user-attachments/assets/c27810df-f22a-4b10-9d24-a0f5c674d8b1)

bảng loại sản phẩm 
![image](https://github.com/user-attachments/assets/ecb20c3d-048c-4999-a163-e18b1a0267a2)

bảng nhà cung cấp 

![image](https://github.com/user-attachments/assets/ef75ab8b-792c-47ac-8bad-e7a4d954c90a)

bảng phiếu nhập

![image](https://github.com/user-attachments/assets/50499a57-66da-48fe-87ed-24c17578d99f)

bảng phiếu xuất 

![image](https://github.com/user-attachments/assets/aca7f90d-8e09-4652-9807-03965ed1a975)

bảng sản phẩm 

![image](https://github.com/user-attachments/assets/cb06cdce-9b3b-405b-8f7a-fbcf1233ec2e)

bảng chi tiết phiếu nhập 

![image](https://github.com/user-attachments/assets/58af3adc-0a00-42f4-8b6c-e4a219933f5a)

bảng chi tiết phiếu xuất 

![image](https://github.com/user-attachments/assets/fa2dde64-f48c-492c-925b-7d4f1e8f1063)

bảng diagram 
![image](https://github.com/user-attachments/assets/1544aaea-da0b-4d87-9932-0b5b0ba4e599)


# B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

2 bo sung truong ton kho
![image](https://github.com/user-attachments/assets/87397bb5-b69a-42c8-98cd-f9358a9b32e3)


3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu

tringger em sử dụng để tự động cập nhật số lượng tồn trong kho 
viết trigger:
![image](https://github.com/user-attachments/assets/6120a4b5-9964-4287-a01e-1abd3382c935)

4 nhập dữ liệu 
![image](https://github.com/user-attachments/assets/b607b38c-273a-457f-8356-521447b3359e)

kết quả
![Uploading image.png…]()


5 Trigger giúp tự động cập nhật số lượng tồn kho sau mỗi lần nhập hoặc xuất hàng mà không cần thực hiện thủ công.

Đảm bảo dữ liệu tồn kho luôn chính xác, nhất quán và kịp thời, giảm thiểu rủi ro sai sót khi nhập liệu hoặc quên cập nhật.

Tăng tốc độ xử lý công việc cho nhân viên kho, vì các thao tác kiểm tra và tính toán tồn kho đều được hệ thống thực hiện tự động.

Giảm khối lượng công việc lập trình phía ứng dụng, vì trigger hoạt động ngay tại tầng cơ sở dữ liệu, giúp hệ thống trở nên gọn nhẹ và bảo mật hơn.

Khi kết hợp với bảng log sự kiện, trigger còn hỗ trợ lưu vết các thay đổi, giúp dễ dàng kiểm tra lịch sử giao dịch và truy vết khi cần.













