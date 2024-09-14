#  Group 12 mobile_app

Trần Mai Anh(22010242), Đàm Việt Hưng(22014569)

Ứng dụng tìm kiếm địa điểm ăn uống. 
  
# 1 Lên Kế Hoạch và Phân Tích Yêu Cầu
## 1.1. Xác định Mục Tiêu
- **Mục tiêu chính:** Tạo ra một ứng dụng web cho phép người dùng tìm kiếm địa điểm ăn uống theo sở thích, vị trí, và thời gian mở cửa.
- **Tính năng chính:**
  - Tìm kiếm nhà hàng theo địa điểm, loại hình ẩm thực, đánh giá, và khoảng cách.
  - Xem thông tin chi tiết về nhà hàng: địa chỉ, số điện thoại, thực đơn, và giờ mở cửa.
  - Đặt bàn trực tuyến (nếu có).
  - Xem đánh giá và viết đánh giá từ người dùng.
  - Quản lý tài khoản người dùng và lịch sử tìm kiếm, đặt bàn.
## 1.2. Phân Tích Yêu Cầu Người Dùng
- Khảo sát và phỏng vấn người dùng: Hiểu sở thích và thói quen ăn uống của người dùng để tối ưu hóa trải nghiệm.
- Xác định yêu cầu chức năng và phi chức năng: Đảm bảo ứng dụng có khả năng mở rộng, bảo mật tốt, và dễ sử dụng.
# 2. Thiết Kế Kiến Trúc Hệ Thống
## 2.1. Thiết Kế Cơ Sở Dữ Liệu
- Mô hình dữ liệu: Thiết kế sơ đồ ER (Entity-Relationship) cho các bảng cơ sở dữ liệu như Nhà Hàng, Thực Đơn, Người Dùng, Đánh Giá.
- Quan hệ giữa các bảng: Xác định các khóa chính và khóa ngoại giữa bảng nhà hàng, thực đơn, đánh giá, và người dùng.
## 2.2. Thiết Kế Kiến Trúc Ứng Dụng
- Kiến trúc hệ thống: Sử dụng kiến trúc MVC (Model-View-Controller) hoặc microservices.
- Lưu trữ và quản lý dữ liệu: Quyết định giữa hệ thống quản lý cơ sở dữ liệu (SQL hoặc NoSQL) để lưu trữ thông tin nhà hàng và đánh giá.
# 3. Phát Triển Backend
## 3.1. Xây Dựng API
- Thiết kế RESTful API: Cung cấp các endpoint cho các chức năng như tìm kiếm nhà hàng (GET /restaurants), đặt bàn (POST /reservations), và đăng đánh giá (POST /reviews).
- Xử lý logic nghiệp vụ: Tạo các dịch vụ để xử lý việc tìm kiếm, đặt bàn, và quản lý đánh giá của người dùng.
## 3.2. Tích Hợp Cơ Sở Dữ Liệu
- Kết nối cơ sở dữ liệu: Sử dụng ORM (Object-Relational Mapping) hoặc truy vấn SQL trực tiếp để tương tác với cơ sở dữ liệu.
- Quản lý giao dịch: Đảm bảo tính toàn vẹn của dữ liệu trong quá trình quản lý đặt bàn và đánh giá.
# 4. Tích Hợp với Backend
- Gọi API: Sử dụng AJAX hoặc Fetch API để tương tác với các dịch vụ backend.
- Xử lý phản hồi: Hiển thị thông tin nhà hàng, thực đơn, đánh giá trên giao diện người dùng và xử lý các lỗi xảy ra.
# 5. Kiểm Tra và Đảm Bảo Chất Lượng
- Kiểm tra đơn vị (Unit Testing): Kiểm tra từng thành phần của ứng dụng như chức năng tìm kiếm, đặt bàn, và đánh giá.
- Kiểm tra tích hợp (Integration Testing): Đảm bảo các phần của ứng dụng hoạt động đồng bộ.
- Kiểm tra hệ thống (System Testing): Xác minh toàn bộ ứng dụng đáp ứng các yêu cầu đặt ra.
# 6. Tài Liệu và Hướng Dẫn Người Dùng
- Hướng dẫn sử dụng: Cung cấp hướng dẫn chi tiết cho người dùng về cách tìm kiếm nhà hàng, đặt bàn, và viết đánh giá.
- FAQs và hỗ trợ: Tạo phần câu hỏi thường gặp (FAQs) và cung cấp hỗ trợ khách hàng.


- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
