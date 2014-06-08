FROM ruby

ENV RAKE_ENV development

RUN curl http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
RUN echo "deb http://packages.elasticsearch.org/elasticsearch/1.2/debian stable main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install elasticsearch

ENTRYPOINT ['bundle exec', 'puma']
