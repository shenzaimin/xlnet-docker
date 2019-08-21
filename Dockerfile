FROM python:3.6
WORKDIR /tmp
COPY packages.txt .
RUN pip install -r /tmp/packages.txt -i https://pypi.douban.com/simple/ 
