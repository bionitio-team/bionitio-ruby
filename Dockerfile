FROM ruby:2.6.3
WORKDIR /bionitio
COPY . .

RUN gem build bionitio.gemspec
# RUN gem install --user-install bionitio
RUN gem install bionitio
ENV PATH "/bionitio/bin:${PATH}"
