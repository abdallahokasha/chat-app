### Stopping Issues
##### Error 
An error occurred while installing mysql2 (0.5.2), and Bundler cannot continue.
Make sure that `gem install mysql2 -v '0.5.2' --source 'https://rubygems.org/'` succeeds before bundling.

##### Solution 
from [stackoverflow answer](https://stackoverflow.com/a/45474878/5863487 "https://stackoverflow.com/a/45474878/5863487") install `sudo apt-get install libmysqlclient-dev`

### Notes

#### Rails Console

Open rails console `rails c` and close it `exit`

##### [CRUD](https://guides.rubyonrails.org/active_record_basics.html#crud-reading-and-writing-data "https://guides.rubyonrails.org/active_record_basics.html#crud-reading-and-writing-data")

`Application.count()`

`app1 = Application.create(name: "First app");`

#### [docker-compose](https://docs.docker.com/compose/rails/ "https://docs.docker.com/compose/rails/")
Rebuild the application
If you make changes to the Gemfile or the Compose file to try out some different configurations, you need to rebuild. Some changes require only `docker-compose up --build`, but a full rebuild requires a re-run of `docker-compose run web bundle `install to sync changes in the Gemfile.lock to the host, followed by `docker-compose up --build`.


#### Rspec

`rails g rspec:install`

`rails g rspec:controller applications`

`rails g rspec:model application`

`bundle exec rspec spec/controllers/applications_controller_spec.rb`

`bundle exec rspec spec/models`

`bundle exec rspec spec/controllers`