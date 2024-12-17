# 根据excel数据填充协议模板

## 项目结构
```
agreement-generator/
├── Dockerfile          # Docker 镜像构建文件
├── pip.conf            # pip 配置文件,
├── README.md           # 项目说明文档
├── requirements.txt    # Python 依赖文件
├── template.zip        # 协议模板压缩包
├── server.py           # 主服务器脚本
├── templates/          # 模板文件目录
│   └── index.html      # 主页入口
└── upload/             # 上传的文件存储目录
```

模板变量为"temp_"开头拼接英文变量名 如: temp_gongshi

## docker镜像构建
```
docker build -t agreement-generator:1.0.0 .
docker run -d -p 5000:5000 --name agreement-generator agreement-generator:1.0.0
```