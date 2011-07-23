Test app for Rails issue [#2142](https://github.com/rails/rails/issues/2142)
==========================

to setup, run:

   bundle install
   rake db:create:all
   rake db:migrate
   bundle exec rails s
   
then go to http://localhost:3000

and you should see "hello world".  Now go in and change `config/database.yml`; perhaps change the username to `root2`

now it will fail.  *However* if you look in `app/controllers/public_controller.rb`, we would expect the exception to be rescued; but it is not.  This is because the QueryCache is creating a connection and if it fails that low down it misses almost everything (possibly including hoptoad?)

