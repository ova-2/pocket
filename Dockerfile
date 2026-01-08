FROM alpine
WORKDIR /app

RUN apk add --no-cache curl unzip

RUN curl -L https://github.com/pocketbase/pocketbase/releases/latest/download/pocketbase_linux_amd64.zip \
 && unzip pocketbase_linux_amd64.zip \
 && chmod +x pocketbase

CMD sh -c "./pocketbase serve --http=0.0.0.0:${PORT:-8090}"
