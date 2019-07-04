FROM ruby:2.6.3
WORKDIR /bionitio
COPY . .

RUN gem build bionitio.gemspec
RUN gem install --user-install bionitio

# ENV PATH "/bionitio/bin:${PATH}"
ENV PATH $(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH

ENTRYPOINT ["bionitio"]
