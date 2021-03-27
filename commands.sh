rails new devcamp_portfolio -T --database=postgresql

rails db:create

FATAL:  role "cristian" does not exist

sudo -u postgres createuser --superuser cristian

rails db:create

Created database 'devcamp_portfolio_development'
Created database 'devcamp_portfolio_test'

rails db:migrate

rails g scaffold Blog title:string body:text

Running via Spring preloader in process 6425
      invoke  active_record
      create    db/migrate/20210322040351_create_blogs.rb
      create    app/models/blog.rb
      invoke  resource_route
       route    resources :blogs
      invoke  scaffold_controller
      create    app/controllers/blogs_controller.rb
      invoke    erb
      create      app/views/blogs
      create      app/views/blogs/index.html.erb
      create      app/views/blogs/edit.html.erb
      create      app/views/blogs/show.html.erb
      create      app/views/blogs/new.html.erb
      create      app/views/blogs/_form.html.erb
      invoke    helper
      create      app/helpers/blogs_helper.rb
      invoke    jbuilder
      create      app/views/blogs/index.json.jbuilder
      create      app/views/blogs/show.json.jbuilder
      create      app/views/blogs/_blog.json.jbuilder
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/blogs.coffee
      invoke    scss
      create      app/assets/stylesheets/blogs.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.scss
      
rails db:migrate

== 20210322040351 CreateBlogs: migrated (0.0714s) =============================

rails g controller Pages home about contact
Running via Spring preloader in process 9345
      create  app/controllers/pages_controller.rb
       route  get 'pages/home'
get 'pages/about'
get 'pages/contact'
      invoke  erb
      create    app/views/pages
      create    app/views/pages/home.html.erb
      create    app/views/pages/about.html.erb
      create    app/views/pages/contact.html.erb
      invoke  helper
      create    app/helpers/pages_helper.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/pages.coffee
      invoke    scss
      create      app/assets/stylesheets/pages.scss

rails g model Skill title:string percent_utilized:integer
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.                                         
Running via Spring preloader in process 17666
      invoke  active_record
      create    db/migrate/20210324041153_create_skills.rb
      create    app/models/skill.rb

rails db:migrate
== 20210324041153 CreateSkills: migrating =====================================
-- create_table(:skills)
   -> 0.2813s
== 20210324041153 CreateSkills: migrated (0.2814s) ============================

rails console

Running via Spring preloader in process 18481
Loading development environment (Rails 5.2.4.5)

2.7.0 :002 > Skill.create!(title: "Rails", percent_utilized: 75)
   (0.2ms)  BEGIN
  Skill Create (0.4ms)  INSERT INTO "skills" ("title", "percent_utilized", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Rails"], ["percent_utilized", 75], ["created_at", "2021-03-24 04:23:18.422514"], ["updated_at", "2021-03-24 04:23:18.422514"]]
   (8.7ms)  COMMIT
 => #<Skill id: 1, title: "Rails", percent_utilized: 75, created_at: "2021-03-24 04:23:18", updated_at: "2021-03-24 04:23:18"> 

2.7.0 :003 > Skill.create!(title: "Angular", percent_utilized: 10)
   (0.2ms)  BEGIN
  Skill Create (0.4ms)  INSERT INTO "skills" ("title", "percent_utilized", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "Angular"], ["percent_utilized", 10], ["created_at", "2021-03-24 04:26:02.194958"], ["updated_at", "2021-03-24 04:26:02.194958"]]
   (10.5ms)  COMMIT
 => #<Skill id: 2, title: "Angular", percent_utilized: 10, created_at: "2021-03-24 04:26:02", updated_at: "2021-03-24 04:26:02"> 


rails g scaffold Portfolio title:string subtitle:string body:text main_image:string thumb_image:string
Running via Spring preloader in process 17246
      invoke  active_record
      create    db/migrate/20210325025533_create_portfolios.rb
      create    app/models/portfolio.rb
      invoke  resource_route
       route    resources :portfolios
      invoke  scaffold_controller
      create    app/controllers/portfolios_controller.rb
      invoke    erb
      create      app/views/portfolios
      create      app/views/portfolios/index.html.erb
      create      app/views/portfolios/edit.html.erb
      create      app/views/portfolios/show.html.erb
      create      app/views/portfolios/new.html.erb
      create      app/views/portfolios/_form.html.erb
      invoke    helper
      create      app/helpers/portfolios_helper.rb
      invoke    jbuilder
      create      app/views/portfolios/index.json.jbuilder
      create      app/views/portfolios/show.json.jbuilder
      create      app/views/portfolios/_portfolio.json.jbuilder
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/portfolios.coffee
      invoke    scss
      create      app/assets/stylesheets/portfolios.scss
      invoke  scss
    conflict    app/assets/stylesheets/scaffolds.scss
  Overwrite /home/cristian/proyectos_rails/devcamp_portfolio/devcamp_portfolio/app/assets/stylesheets/scaffolds.scss? (enter "h" for help) [Ynaqdhm] n
        skip    app/assets/stylesheets/scaffolds.scss

ails db:migrate
== 20210325025533 CreatePortfolios: migrating =================================
-- create_table(:portfolios)
   -> 0.5219s
== 20210325025533 CreatePortfolios: migrated (0.5220s) ========================

rails db:setup
Database 'devcamp_portfolio_development' already exists
Database 'devcamp_portfolio_test' already exists
-- enable_extension("plpgsql")
   -> 0.0142s
-- create_table("blogs", {:force=>:cascade})
   -> 0.1861s
-- create_table("portfolios", {:force=>:cascade})
   -> 0.0920s
-- create_table("skills", {:force=>:cascade})
   -> 0.1085s
-- initialize_schema_migrations_table()
   -> 0.0011s
-- enable_extension("plpgsql")
   -> 0.1540s
-- create_table("blogs", {:force=>:cascade})
   -> 0.1428s
-- create_table("portfolios", {:force=>:cascade})
   -> 0.0918s
-- create_table("skills", {:force=>:cascade})
   -> 0.0668s
-- initialize_schema_migrations_table()
   -> 0.0670s
10 blog post created
5 skills created
9 portfolio item created

$ bundle install

Fetching gem metadata from https://rubygems.org/............
Fetching gem metadata from https://rubygems.org/.
Resolving dependencies...
Using rake 13.0.3
Using concurrent-ruby 1.1.8
Using i18n 1.8.9
Using minitest 5.14.4
Using thread_safe 0.3.6
Using tzinfo 1.2.9
Using activesupport 5.0.7.2
Using builder 3.2.4
Using erubis 2.7.0
Using mini_portile2 2.4.0
Using nokogiri 1.10.10
Using rails-dom-testing 2.0.3
Using crass 1.0.6
Using loofah 2.9.0
Using rails-html-sanitizer 1.3.0
Using actionview 5.0.7.2
Using rack 2.2.3
Using rack-test 0.6.3
Using actionpack 5.0.7.2
Using nio4r 2.5.7
Using websocket-extensions 0.1.5
Using websocket-driver 0.6.5
Using actioncable 5.0.7.2
Using globalid 0.4.2
Using activejob 5.0.7.2
Using mini_mime 1.0.2
Using mail 2.7.1
Using actionmailer 5.0.7.2
Using activemodel 5.0.7.2
Using arel 7.1.4
Using activerecord 5.0.7.2
Using bindex 0.8.1
Using bundler 1.17.3
Using byebug 11.1.3
Using coffee-script-source 1.12.2
Using execjs 2.7.0
Using coffee-script 2.4.1
Using method_source 1.0.0
Using thor 1.1.0
Using railties 5.0.7.2
Using coffee-rails 4.2.2
Using ffi 1.15.0
Fetching friendly_id 5.1.0
Installing friendly_id 5.1.0
Using jbuilder 2.11.2
Using jquery-rails 4.4.0
Using rb-fsevent 0.10.4
Using rb-inotify 0.10.1
Using listen 3.0.8
Using pg 0.21.0
Using puma 3.12.6
Using sprockets 3.7.2
Using sprockets-rails 3.2.2
Using rails 5.0.7.2
Using sass-listen 4.0.0
Using sass 3.7.4
Using tilt 2.0.10
Using sass-rails 5.0.7
Using spring 2.1.1
Using spring-watcher-listen 2.0.1
Using turbolinks-source 5.2.0
Using turbolinks 5.2.1
Using uglifier 4.2.0
Using web-console 3.7.0
Bundle complete! 16 Gemfile dependencies, 63 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.

$ rails generate friendly_id
Running via Spring preloader in process 8344
      create  db/migrate/20210327042143_create_friendly_id_slugs.rb
      create  config/initializers/friendly_id.rb

$ rails db:migrate
== 20210327042143 CreateFriendlyIdSlugs: migrating ============================
-- create_table(:friendly_id_slugs, {})
   -> 0.2167s
-- add_index(:friendly_id_slugs, :sluggable_id)
   -> 0.0246s
-- add_index(:friendly_id_slugs, [:slug, :sluggable_type])
   -> 0.0253s
-- add_index(:friendly_id_slugs, [:slug, :sluggable_type, :scope], {:unique=>true})
   -> 0.0250s
-- add_index(:friendly_id_slugs, :sluggable_type)
   -> 0.0252s
== 20210327042143 CreateFriendlyIdSlugs: migrated (0.3172s) ===================
