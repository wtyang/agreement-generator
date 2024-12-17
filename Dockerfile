# 使用更小的基础镜像
FROM python:3.12-slim

# 设置pip源为阿里云
RUN mkdir -p /root/.pip
COPY pip.conf /root/.pip/pip.conf

# 设置工作目录
WORKDIR /agreement-generator

# 复制必要的文件
# COPY requirements.txt .
# COPY server.py .
# COPY templates/ templates/
# COPY upload/ upload/
COPY . .


# 安装依赖
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    rm -rf /root/.cache/pip

# 设置环境变量
ENV FLASK_APP=server.py

# 暴露端口
EXPOSE 5000

# 运行应用
CMD ["flask", "run", "--host=0.0.0.0"]