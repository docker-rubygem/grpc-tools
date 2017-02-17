FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.2

RUN gem install grpc-tools --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["grpc_tools_ruby_protoc"]
CMD ["--help"]
