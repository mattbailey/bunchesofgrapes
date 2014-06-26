FROM dockerfile/ruby

ENV RAKE_ENV development
CMD bundle install

EXPOSE 9292

ENTRYPOINT ['bundle exec', 'puma']
