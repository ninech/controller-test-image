FROM gcr.io/kubebuilder/thirdparty-linux:1.15.5 as kubebuilder
FROM golang:latest

COPY --from=kubebuilder /kubebuilder_linux_amd64.tar.gz .
RUN tar -C /usr/local/ -zxvf kubebuilder_linux_amd64.tar.gz kubebuilder/bin/ && rm kubebuilder_linux_amd64.tar.gz
