# 1. Chọn image nền (base image)
FROM python:3.9-slim

# 2. Đặt thư mục làm việc trong container
WORKDIR /app

# 3. Copy file requirements.txt và cài thư viện
COPY requirements.txt .
RUN pip install -r requirements.txt

# 4. Copy toàn bộ code còn lại vào container
COPY . .

# 5. Lệnh mặc định khi container khởi động
CMD ["python", "app.py"]
