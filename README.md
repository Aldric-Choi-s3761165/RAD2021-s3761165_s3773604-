# README
 
 student name: Aldric Choi , student number :s3761165, 
 student name: Kinh Pham Nguyen Ngoc, student number:s3773604
 contribution: Aldric 55 - Kinh 45
 The highest level of attempt at 80+
 Time sheet:
 Aldric Choi working time around 120 hours in total
 Kinh Pham Nguyen Ngoc working time around  90 hours in total
 
 heroku deployment url: https://choi-pham.herokuapp.com/
 last log
 2021-05-24T01:01:10.512626+00:00 app[web.1]: I, [2021-05-24T01:01:10.512516 #4]  INFO -- : [ef4c3d68-b23e-4621-934d-496a62f5cedd]   Rendered layouts/_header.html.erb (25.3ms)
2021-05-24T01:01:10.515642+00:00 app[web.1]: D, [2021-05-24T01:01:10.515533 #4] DEBUG -- : [ef4c3d68-b23e-4621-934d-496a62f5cedd]   [1m[36mCACHE Customer Load (0.0ms)[0m  [1m[34mSELECT  "customers".* FROM "customers" WHERE "customers"."id" = $1 LIMIT $2[0m  [["id", 3], ["LIMIT", 1]]
2021-05-24T01:01:10.516002+00:00 app[web.1]: I, [2021-05-24T01:01:10.515900 #4]  INFO -- : [ef4c3d68-b23e-4621-934d-496a62f5cedd]   Rendered layouts/_footer.html.erb (2.3ms)
2021-05-24T01:01:10.516566+00:00 app[web.1]: I, [2021-05-24T01:01:10.516475 #4]  INFO -- : [ef4c3d68-b23e-4621-934d-496a62f5cedd] Completed 200 OK in 460ms (Views: 71.8ms | ActiveRecord: 179.9ms)
2021-05-24T01:01:10.518537+00:00 heroku[router]: at=info method=GET path="/" host=choi-pham.herokuapp.com request_id=ef4c3d68-b23e-4621-934d-496a62f5cedd fwd="124.183.145.40" dyno=web.1 connect=1ms service=479ms status=200 bytes=14200 protocol=https
2021-05-24T01:01:10.820066+00:00 heroku[router]: at=info method=GET path="/assets/application-ea55afdd15370188f779fc38a9af66f30819e46435832c27f320bf314c92f53e.css" host=choi-pham.herokuapp.com request_id=bd170365-4432-496d-a9d8-ab1f16ae7978 fwd="124.183.145.40" dyno=web.1 connect=1ms service=9ms status=200 bytes=30634 protocol=https
2021-05-24T01:01:10.825721+00:00 heroku[router]: at=info method=GET path="/assets/application-9eac9b18d8f521c5fd50a03d1ee86367f2ba7f2f93a7f36b6ca3b5c70e7c6922.js" host=choi-pham.herokuapp.com request_id=8f663816-3577-42ce-a181-656ba644c85f fwd="124.183.145.40" dyno=web.1 connect=1ms service=10ms status=200 bytes=119209 protocol=https
2021-05-24T01:01:11.373288+00:00 heroku[router]: at=info method=GET path="/assets/menu-73c292be0f6c00bde0192f828b26305722442c1a1699ff4eb15694babf329756.svg" host=choi-pham.herokuapp.com request_id=ac6ec800-7409-4f72-8662-b7aa01624410 fwd="124.183.145.40" dyno=web.1 connect=1ms service=2ms status=200 bytes=1178 protocol=https
2021-05-24T01:01:12.548588+00:00 heroku[router]: at=info method=GET path="/assets/bootstrap/glyphicons-halflings-regular-fe185d11a49676890d47bb783312a0cda5a44c4039214094e7957b4c040ef11c.woff2" host=choi-pham.herokuapp.com request_id=d88962d2-db4f-4207-8695-e9a5199be262 fwd="124.183.145.40" dyno=web.1 connect=1ms service=3ms status=200 bytes=18237 protocol=https
2021-05-24T01:01:12.830794+00:00 heroku[router]: at=info method=GET path="/favicon.ico" host=choi-pham.herokuapp.com request_id=5052f69a-b934-4157-8306-7332c0e6631a fwd="124.183.145.40" dyno=web.1 connect=1ms service=2ms status=200 bytes=207 protocol=https
build log
-----> Building on the Heroku-20 stack
-----> Using buildpack: heroku/ruby
-----> Ruby app detected
-----> Installing bundler 1.17.3
-----> Removing BUNDLED WITH version in the Gemfile.lock
-----> Compiling Ruby/Rails
-----> Using Ruby version: ruby-2.6.6
-----> Installing dependencies using bundler 1.17.3
       Running: BUNDLE_WITHOUT='development:test' BUNDLE_PATH=vendor/bundle BUNDLE_BIN=vendor/bundle/bin BUNDLE_DEPLOYMENT=1 BUNDLE_GLOBAL_PATH_APPENDS_RUBY_SCOPE=1 bundle install -j4
       The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
       Using rake 13.0.3
       Using concurrent-ruby 1.1.8
       Using i18n 1.8.10
       Using minitest 5.14.4
       Using thread_safe 0.3.6
       Using tzinfo 1.2.9
       Using activesupport 5.1.7
       Using builder 3.2.4
       Using erubi 1.10.0
       Using mini_portile2 2.5.1
       Using racc 1.5.2
       Using nokogiri 1.11.3 (x86_64-linux)
       Using rails-dom-testing 2.0.3
       Using crass 1.0.6
       Using loofah 2.9.1
       Using rails-html-sanitizer 1.3.0
       Using actionview 5.1.7
       Using rack 2.2.3
       Using rack-test 1.1.0
       Using actionpack 5.1.7
       Using nio4r 2.5.7
       Using websocket-extensions 0.1.5
       Using websocket-driver 0.6.5
       Using actioncable 5.1.7
       Using globalid 0.4.2
       Using activejob 5.1.7
       Using mini_mime 1.1.0
       Using mail 2.7.1
       Using actionmailer 5.1.7
       Using activemodel 5.1.7
       Using arel 8.0.0
       Using activerecord 5.1.7
       Using execjs 2.7.0
       Using autoprefixer-rails 10.2.5.0
       Using bcrypt 3.1.12
       Using rb-fsevent 0.11.0
       Using ffi 1.15.0
       Using rb-inotify 0.10.1
       Using sass-listen 4.0.0
       Using sass 3.7.4
       Using bootstrap-sass 3.3.7
       Using bundler 1.17.3
       Using coffee-script-source 1.12.2
       Using coffee-script 2.4.1
       Using method_source 1.0.0
       Using thor 1.1.0
       Using railties 5.1.7
       Using coffee-rails 4.2.2
       Using hashie 4.1.0
       Using jbuilder 2.11.2
       Using jquery-rails 4.4.0
       Using jquery-slick-rails 1.9.0
       Using oauth 0.5.6
       Using omniauth 1.9.1
       Using omniauth-oauth 1.2.0
       Using omniauth-twitter 1.4.0
       Using pg 1.2.3
       Using puma 3.12.6
       Using sprockets 3.7.2
       Using sprockets-rails 3.2.2
       Using rails 5.1.7
       Using rails-ujs 0.1.0
       Using tilt 2.0.10
       Using sass-rails 5.0.7
       Using turbolinks-source 5.2.0
       Using turbolinks 5.2.1
       Using uglifier 4.2.0
       Bundle complete! 25 Gemfile dependencies, 67 gems now installed.
       Gems in the groups development and test were not installed.
       Bundled gems are installed into `./vendor/bundle`
       Bundle completed (0.49s)
       Cleaning up the bundler cache.
       The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.
-----> Installing node-v12.16.2-linux-x64
       Detected manifest file, assuming assets were compiled locally
-----> Detecting rails configuration
-----> Detecting rake tasks
###### WARNING:
       You have not declared a Ruby version in your Gemfile.
       
       To declare a Ruby version add this line to your Gemfile:
       
       ```
       ruby "2.6.6"
       ```
       
       For more information see:
         https://devcenter.heroku.com/articles/ruby-versions
###### WARNING:
       You set your `config.assets.compile = true` in production.
       This can negatively impact the performance of your application.
       
       For more information can be found in this article:
         https://devcenter.heroku.com/articles/rails-asset-pipeline#compile-set-to-true-in-production
       
###### WARNING:
       There is a more recent Ruby version available for you to use:
       
       2.6.7
       
       The latest version will include security and bug fixes. We always recommend
       running the latest version of your minor release.
       
       Please upgrade your Ruby version.
       
       For all available Ruby versions see:
         https://devcenter.heroku.com/articles/ruby-support#supported-runtimes
###### WARNING:
       No Procfile detected, using the default web server.
       We recommend explicitly declaring how to boot your server process via a Procfile.
       https://devcenter.heroku.com/articles/ruby-default-web-server
-----> Discovering process types
       Procfile declares types     -> (none)
       Default types for buildpack -> console, rake, web
-----> Compressing...
       Done: 46.3M
-----> Launching...
       Released v31
       https://choi-pham.herokuapp.com/ deployed to Heroku
       
       
 github repository https://github.com/Aldric-Choi-s3761165/RAD2021-s3761165_s3773604-.git