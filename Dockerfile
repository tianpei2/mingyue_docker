FROM ubuntu

# RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
# RUN sed -i 's/security.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt update
# Install all system pre-reqs
RUN apt install apt-utils \
                build-essential \
                curl \
                git \
                cmake \
                unzip \
                autoconf \
                autogen \
                libtool \
                mlocate \
                zlib1g-dev \
                python3-dev \
                python3-pip \
                -y

# Using douban pipy mirror
RUN pip3 install -i https://pypi.douban.com/simple/ -U pip 
RUN pip3 config set global.index-url https://pypi.douban.com/simple/

# Install packages you need
RUN pip3 install  scipy==1.10.1 \
                  numpy==1.24.3 \
                  pandas==2.0.1

CMD ["bash"]