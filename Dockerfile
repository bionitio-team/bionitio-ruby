FROM ruby:2.6.3
WORKDIR /bionitio
COPY . .

ENV PATH "/bionitio/bin:${PATH}"

ENTRYPOINT ["bionitio"]
