FROM lsiobase/alpine.python3
MAINTAINER rix1337

# build tools
RUN apk add --no-cache python3-dev libffi-dev gcc build-base musl-dev make

# dependencies
RUN pip install --upgrade pip

# add local files
COPY root/ /

# invalidate build cache on repo commit
ADD "https://api.github.com/repos/rix1337/WakeOnLAN-API/commits?per_page=1" latest_commit

# Install WakeOnLAN-API
RUN pip install wol_api --no-cache-dir
