## Ruby On Rails 5.2.2/Ruby 2.5.3/Bundle 2.0.1

 - `git clone {this repo} {app_dir}`
 - Change the values in .env file
 - `cd {app_dir} && docker-compose build`
 - `docker-compose up`

### Access to data
- `docker ps`
- `docker run -it {app container name} bash`
- `psql -U postgres`


### Seed data
- `bundle exec rake db:seed`
- `bundle exec rake spree_sample:load`


