FROM lsiobase/alpine.python3
MAINTAINER rix1337

# build tools
RUN apk add --no-cache python3-dev libffi-dev gcc musl-dev make

# dependencies
RUN pip install --upgrade pip
RUN pip install wol_api --no-cache-dir

# add local files
COPY root/ /
