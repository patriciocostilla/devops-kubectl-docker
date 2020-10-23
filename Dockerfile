FROM alpine as builder 
RUN apk add curl && curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl && chmod +x kubectl 

FROM alpine
COPY --from=builder kubectl /usr/local/bin/kubectl
