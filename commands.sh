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

