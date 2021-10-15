FROM python:3.9-slim

WORKDIR /app

RUN BUILD_PACKAGES="libffi-dev libssl-dev gcc" \
    && apt update && apt-get install -y openssh-client sshpass $BUILD_PACKAGES \
    && python -m pip --no-cache-dir install ansible \
    && apt-get purge -y $BUILD_PACKAGES \
    && rm -rf /var/lib/apt/lists/*