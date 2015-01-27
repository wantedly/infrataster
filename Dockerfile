FROM quay.io/wantedly/ruby:2.1.5
MAINTAINER Seigo Uchida <spesnova@gmail.com> (@spesnova)

RUN mkdir /test

COPY Gemfile /test/Gemfile
COPY Gemfile.lock /test/Gemfile.lock

WORKDIR /test
RUN bundle install -j4

VOLUME ["/test/spec"]

CMD ["bundle", "exec", "rspec", "-c"]
