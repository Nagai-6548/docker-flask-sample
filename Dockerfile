FROM ubuntu:latest

ARG project_dir=/app/

WORKDIR $project_dir

# パッケージアップデートとpythonインストール
RUN apt-get update
RUN apt-get install python3 python3-pip -y

# flaskインストール
RUN pip3 install flask

# 実行
CMD ["python3", "main.py"]