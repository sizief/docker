FROM ruby:2.5.3
 
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client nodejs yarn &&\
            gem install bundler -v 2.0.1 --source http://rubygems.org  &&\
            apt-get install -y libpq-dev  
ENV RAILS_ROOT /var/www/shopshop
RUN mkdir -p $RAILS_ROOT
 
WORKDIR $RAILS_ROOT
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
 
RUN bundler install
COPY . .
EXPOSE 3000
#CMD [ "rails","s" ]
ENV ENTRYPOINT app
CMD ["config/container.sh"]
