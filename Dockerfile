# Please execute the following command to build
# docker build -t [container_name] this_file_path

# Please execute the following command to start it
# docker run -itd --name [container_name] -p xx:xx [container_name]

# Please execute the following command to attach
# docker exec -it [container_name] /bin/bash

FROM centos:centos7.8.2003
LABEL maintainer="kuroko3417 <kuroko3417@gmail.com>"

RUN : "初期設定（最低限必要なツールをインストール）" && \
	yum update -y && \
	yum install -y \
		screen \
		which \
		tree \
		less

# bashの設定
COPY config/.bashrc /root/.bashrc

# viの設定
COPY config/.vimrc /root/.vimrc
