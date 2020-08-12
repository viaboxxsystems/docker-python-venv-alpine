FROM python:3.8.5-alpine3.12

MAINTAINER Jan Nonnen <jan.nonnen@viaboxx.de>

# install "virtualenv", since the vast majority of users of this image will want it
RUN pip install --no-cache-dir virtualenv

RUN apk update
RUN apk add make automake gcc g++ subversion python3-dev

RUN pip install --upgrade pip
# pandas install takes ages -.-
RUN pip install pandas==1.1.0

CMD ["python3"]
