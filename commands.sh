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

$ rails g migration add_slug_to_blogs
Running via Spring preloader in process 14637
      invoke  active_record
      create    db/migrate/20210327045717_add_slug_to_blogs.rb

$ rails d migration add_slug_to_blogs
Running via Spring preloader in process 15296
      invoke  active_record
      remove    db/migrate/20210327045717_add_slug_to_blogs.rb

$ rails g migration add_slug_to_blogs slug:string:uniq
Running via Spring preloader in process 15525
      invoke  active_record
      create    db/migrate/20210327050052_add_slug_to_blogs.rb

$ rails db:migrate
== 20210327050052 AddSlugToBlogs: migrating ===================================
-- add_column(:blogs, :slug, :string)
   -> 0.0005s
-- add_index(:blogs, :slug, {:unique=>true})
   -> 0.0649s
== 20210327050052 AddSlugToBlogs: migrated (0.0655s) ==========================

$ rails c
Running via Spring preloader in process 16849
Loading development environment (Rails 5.0.7.2)
2.4.6 :001 > Blog.create!(title: "my great title", body: "asdfasdf")
   (0.1ms)  BEGIN
  Blog Exists (12.7ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" IS NOT NULL) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "my-great-title"], ["LIMIT", 1]]
  SQL (20.4ms)  INSERT INTO "blogs" ("title", "body", "created_at", "updated_at", "slug") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "my great title"], ["body", "asdfasdf"], ["created_at", "2021-03-27 05:18:52.692266"], ["updated_at", "2021-03-27 05:18:52.692266"], ["slug", "my-great-title"]]
   (7.5ms)  COMMIT
 => #<Blog id: 11, title: "my great title", body: "asdfasdf", created_at: "2021-03-27 05:18:52", updated_at: "2021-03-27 05:18:52", slug: "my-great-title">


# Re-save blogs to get its slug assigned

$ rails c
Running via Spring preloader in process 17124
2.4.6 :001 > Blog.find_each(&:save)
  Blog Load (0.4ms)  SELECT  "blogs".* FROM "blogs" ORDER BY "blogs"."id" ASC LIMIT $1  [["LIMIT", 1000]]
   (0.1ms)  BEGIN
  Blog Exists (0.6ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" != 1) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "blog-example-0"], ["LIMIT", 1]]
  SQL (0.2ms)  UPDATE "blogs" SET "slug" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["slug", "blog-example-0"], ["updated_at", "2021-03-27 05:22:55.617873"], ["id", 1]]
   (30.3ms)  COMMIT
   (0.1ms)  BEGIN
  Blog Exists (0.3ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" != 2) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "blog-example-1"], ["LIMIT", 1]]
  SQL (0.3ms)  UPDATE "blogs" SET "slug" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["slug", "blog-example-1"], ["updated_at", "2021-03-27 05:22:55.651373"], ["id", 2]]
   (4.6ms)  COMMIT
   (0.1ms)  BEGIN
  Blog Exists (0.2ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" != 3) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "blog-example-2"], ["LIMIT", 1]]
  SQL (0.3ms)  UPDATE "blogs" SET "slug" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["slug", "blog-example-2"], ["updated_at", "2021-03-27 05:22:55.659289"], ["id", 3]]
   (6.0ms)  COMMIT
   (0.1ms)  BEGIN
  Blog Exists (0.2ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" != 4) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "blog-example-3"], ["LIMIT", 1]]
  SQL (0.2ms)  UPDATE "blogs" SET "slug" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["slug", "blog-example-3"], ["updated_at", "2021-03-27 05:22:55.667369"], ["id", 4]]
   (5.7ms)  COMMIT
   (0.1ms)  BEGIN
  Blog Exists (0.3ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" != 5) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "blog-example-4"], ["LIMIT", 1]]
  SQL (0.3ms)  UPDATE "blogs" SET "slug" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["slug", "blog-example-4"], ["updated_at", "2021-03-27 05:22:55.676044"], ["id", 5]]
   (4.9ms)  COMMIT
   (0.1ms)  BEGIN
  Blog Exists (0.2ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" != 6) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "blog-example-5"], ["LIMIT", 1]]
  SQL (0.3ms)  UPDATE "blogs" SET "slug" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["slug", "blog-example-5"], ["updated_at", "2021-03-27 05:22:55.684218"], ["id", 6]]
   (5.1ms)  COMMIT
   (0.1ms)  BEGIN
  Blog Exists (0.2ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" != 7) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "blog-example-6"], ["LIMIT", 1]]
  SQL (0.3ms)  UPDATE "blogs" SET "slug" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["slug", "blog-example-6"], ["updated_at", "2021-03-27 05:22:55.691902"], ["id", 7]]
   (6.2ms)  COMMIT
   (0.1ms)  BEGIN
  Blog Exists (0.2ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" != 8) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "blog-example-7"], ["LIMIT", 1]]
  SQL (0.2ms)  UPDATE "blogs" SET "slug" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["slug", "blog-example-7"], ["updated_at", "2021-03-27 05:22:55.700193"], ["id", 8]]
   (6.3ms)  COMMIT
   (0.1ms)  BEGIN
  Blog Exists (0.3ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" != 9) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "blog-example-8"], ["LIMIT", 1]]
  SQL (0.3ms)  UPDATE "blogs" SET "slug" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["slug", "blog-example-8"], ["updated_at", "2021-03-27 05:22:55.709501"], ["id", 9]]
   (4.6ms)  COMMIT
   (0.1ms)  BEGIN
  Blog Exists (0.4ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" != 10) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "blog-example-9"], ["LIMIT", 1]]
  SQL (0.3ms)  UPDATE "blogs" SET "slug" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["slug", "blog-example-9"], ["updated_at", "2021-03-27 05:22:55.717977"], ["id", 10]]
   (4.5ms)  COMMIT
   (0.1ms)  BEGIN
   (0.0ms)  COMMIT
 => nil 

$ rails g migration add_post_status_to_blogs status:integer
Running via Spring preloader in process 6987
      invoke  active_record
      create    db/migrate/20210327180658_add_post_status_to_blogs.rb

$ rails db:migrate
== 20210327180658 AddPostStatusToBlogs: migrating =============================
-- add_column(:blogs, :status, :integer, {:default=>0})
   -> 0.1071s
== 20210327180658 AddPostStatusToBlogs: migrated (0.1072s) ====================

# Testing blog status enums

$ rails console
Running via Spring preloader in process 8030
Loading development environment (Rails 5.0.7.2)
2.4.6 :001 > Blog.create!(title: "Another blog", body: "another blog body")
   (0.1ms)  BEGIN
  Blog Exists (1.0ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" IS NOT NULL) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "another-blog"], ["LIMIT", 1]]
  SQL (37.4ms)  INSERT INTO "blogs" ("title", "body", "created_at", "updated_at", "slug") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["title", "Another blog"], ["body", "another blog body"], ["created_at", "2021-03-27 18:21:01.465647"], ["updated_at", "2021-03-27 18:21:01.465647"], ["slug", "another-blog"]]
   (16.1ms)  COMMIT
 => #<Blog id: 12, title: "Another blog", body: "another blog body", created_at: "2021-03-27 18:21:01", updated_at: "2021-03-27 18:21:01", slug: "another-blog", status: "draft"> 
2.4.6 :002 > Blog.last.published!
  Blog Load (0.3ms)  SELECT  "blogs".* FROM "blogs" ORDER BY "blogs"."id" DESC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
  SQL (0.4ms)  UPDATE "blogs" SET "status" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["status", 1], ["updated_at", "2021-03-27 18:21:34.215383"], ["id", 12]]
   (16.7ms)  COMMIT
 => true 
2.4.6 :003 > Blog.last
  Blog Load (0.4ms)  SELECT  "blogs".* FROM "blogs" ORDER BY "blogs"."id" DESC LIMIT $1  [["LIMIT", 1]]
 => #<Blog id: 12, title: "Another blog", body: "another blog body", created_at: "2021-03-27 18:21:01", updated_at: "2021-03-27 18:21:34", slug: "another-blog", status: "published"> 

# Retrieving published blogs

$ rails console
Running via Spring preloader in process 9591
Loading development environment (Rails 5.0.7.2)
2.4.6 :001 > Blog.first.published!
  Blog Load (0.3ms)  SELECT  "blogs".* FROM "blogs" ORDER BY "blogs"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.0ms)  BEGIN
  SQL (0.2ms)  UPDATE "blogs" SET "status" = $1, "updated_at" = $2 WHERE "blogs"."id" = $3  [["status", 1], ["updated_at", "2021-03-27 18:39:16.731073"], ["id", 1]]
   (18.1ms)  COMMIT
 => true 
2.4.6 :002 > Blog.published
  Blog Load (0.2ms)  SELECT "blogs".* FROM "blogs" WHERE "blogs"."status" = $1  [["status", 1]]
 => #<ActiveRecord::Relation [#<Blog id: 12, title: "Another blog", body: "another blog body", created_at: "2021-03-27 18:21:01", updated_at: "2021-03-27 18:21:34", slug: "another-blog", status: "published">, 
                              #<Blog id: 1, title: "Blog example 0", body: "Sed ut perspiciatis unde omnis iste natus error si...", created_at: "2021-03-25 03:00:58", updated_at: "2021-03-27 18:39:16", slug: "blog-example-0", status: "published">]>

$ rails g model Topic title:string
Running via Spring preloader in process 6120
      invoke  active_record
      create    db/migrate/20210328164705_create_topics.rb
      create    app/models/topic.rb

$ rails db:migrate
== 20210328164705 CreateTopics: migrating =====================================
-- create_table(:topics)
   -> 0.2096s
== 20210328164705 CreateTopics: migrated (0.2097s) ============================

$ rails g migration add_topic_reference_to_blogs topic:references
Running via Spring preloader in process 8840
      invoke  active_record
      create    db/migrate/20210328180303_add_topic_reference_to_blogs.rb

$ rails db:migrate
== 20210328180303 AddTopicReferenceToBlogs: migrating =========================
-- add_reference(:blogs, :topic, {:foreign_key=>true})
   -> 0.1590s
== 20210328180303 AddTopicReferenceToBlogs: migrated (0.1591s) ================

# Create topics

$ rails console
Running via Spring preloader in process 10716
Loading development environment (Rails 5.0.7.2)
2.4.6 :001 > Topic.create!(title: "Ruby programming")
   (0.1ms)  BEGIN
  SQL (0.6ms)  INSERT INTO "topics" ("title", "created_at", "updated_at") VALUES ($1, $2, $3) RETURNING "id"  [["title", "Ruby programming"], ["created_at", "2021-03-28 18:17:58.899946"], ["updated_at", "2021-03-28 18:17:58.899946"]]
   (10.1ms)  COMMIT
 => #<Topic id: 1, title: "Ruby programming", created_at: "2021-03-28 18:17:58", updated_at: "2021-03-28 18:17:58"> 
2.4.6 :003 > Topic.create!(title: "Software Engineering")
   (0.3ms)  BEGIN
  SQL (0.4ms)  INSERT INTO "topics" ("title", "created_at", "updated_at") VALUES ($1, $2, $3) RETURNING "id"  [["title", "Software Engineering"], ["created_at", "2021-03-28 18:18:41.769089"], ["updated_at", "2021-03-28 18:18:41.769089"]]
   (13.4ms)  COMMIT
 => #<Topic id: 2, title: "Software Engineering", created_at: "2021-03-28 18:18:41", updated_at: "2021-03-28 18:18:41"> 

 # Create a blog and associate its topic 

 $ rails console
Running via Spring preloader in process 11085
Loading development environment (Rails 5.0.7.2)
2.4.6 :001 > Blog.create!(title: "Some cool ruby stuff", body: 'asdfasdf', topic_id: Topic.first.id)
  Topic Load (0.2ms)  SELECT  "topics".* FROM "topics" ORDER BY "topics"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
  Blog Exists (1.0ms)  SELECT  1 AS one FROM "blogs" WHERE ("blogs"."id" IS NOT NULL) AND "blogs"."slug" = $1 LIMIT $2  [["slug", "some-cool-ruby-stuff"], ["LIMIT", 1]]
  SQL (16.1ms)  INSERT INTO "blogs" ("title", "body", "created_at", "updated_at", "slug", "topic_id") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["title", "Some cool ruby stuff"], ["body", "asdfasdf"], ["created_at", "2021-03-28 18:22:37.204020"], ["updated_at", "2021-03-28 18:22:37.204020"], ["slug", "some-cool-ruby-stuff"], ["topic_id", 1]]
   (27.2ms)  COMMIT
 => #<Blog id: 13, title: "Some cool ruby stuff", body: "asdfasdf", created_at: "2021-03-28 18:22:37", updated_at: "2021-03-28 18:22:37", slug: "some-cool-ruby-stuff", status: "draft", topic_id: 1> 
2.4.6 :002 > t = Topic.first
  Topic Load (0.4ms)  SELECT  "topics".* FROM "topics" ORDER BY "topics"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => #<Topic id: 1, title: "Ruby programming", created_at: "2021-03-28 18:17:58", updated_at: "2021-03-28 18:17:58"> 
2.4.6 :003 > t.blogs
  Blog Load (0.3ms)  SELECT "blogs".* FROM "blogs" WHERE "blogs"."topic_id" = $1  [["topic_id", 1]]
 => #<ActiveRecord::Associations::CollectionProxy [#<Blog id: 13, title: "Some cool ruby stuff", body: "asdfasdf", created_at: "2021-03-28 18:22:37", updated_at: "2021-03-28 18:22:37", slug: "some-cool-ruby-stuff", status: "draft", topic_id: 1>]> 

# db:setup blogs topic

$ rails db:setup
Database 'devcamp_portfolio_development' already exists
Database 'devcamp_portfolio_test' already exists
-- enable_extension("plpgsql")
   -> 0.0117s
-- create_table("blogs", {:force=>:cascade})
   -> 0.2208s
-- create_table("friendly_id_slugs", {:force=>:cascade})
   -> 0.2922s
-- create_table("portfolios", {:force=>:cascade})
   -> 0.0834s
-- create_table("skills", {:force=>:cascade})
   -> 0.1003s
-- create_table("topics", {:force=>:cascade})
   -> 0.0834s
-- add_foreign_key("blogs", "topics")
   -> 0.0082s
-- initialize_schema_migrations_table()
   -> 0.0008s
-- enable_extension("plpgsql")
   -> 0.1977s
-- create_table("blogs", {:force=>:cascade})
   -> 0.3648s
-- create_table("friendly_id_slugs", {:force=>:cascade})
   -> 0.2918s
-- create_table("portfolios", {:force=>:cascade})
   -> 0.1253s
-- create_table("skills", {:force=>:cascade})
   -> 0.1086s
-- create_table("topics", {:force=>:cascade})
   -> 0.1418s
-- add_foreign_key("blogs", "topics")
   -> 0.0583s
-- initialize_schema_migrations_table()
   -> 0.0012s
3 topics created
10 blog post created
5 skills created
9 portfolio item created

# Query Portfolio subtitle

$ rails c
Running via Spring preloader in process 14591
Loading development environment (Rails 5.0.7.2)
2.4.6 :001 > Portfolio.first.subtitle
  Portfolio Load (0.4ms)  SELECT  "portfolios".* FROM "portfolios" ORDER BY "portfolios"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => "Ruby on rails" 
2.4.6 :002 > Portfolio.last.subtitle
  Portfolio Load (0.3ms)  SELECT  "portfolios".* FROM "portfolios" ORDER BY "portfolios"."id" DESC LIMIT $1  [["LIMIT", 1]]
 => "Angular" 
2.4.6 :003 > Portfolio.where(subtitle: "Ruby on Rails")
  Portfolio Load (0.3ms)  SELECT "portfolios".* FROM "portfolios" WHERE "portfolios"."subtitle" = $1  [["subtitle", "Ruby on Rails"]]
 => #<ActiveRecord::Relation []> 
2.4.6 :004 > Portfolio.where(subtitle: "Ruby on rails")
  Portfolio Load (0.4ms)  SELECT "portfolios".* FROM "portfolios" WHERE "portfolios"."subtitle" = $1  [["subtitle", "Ruby on rails"]]
 => #<ActiveRecord::Relation [#<Portfolio id: 1, title: "Portfolio title: 0", subtitle: "Ruby on rails", body: "But I must explain to you how all this mistaken id...", main_image: "https://via.placeholder.com/600x400", thumb_image: "https://via.placeholder.com/350x200", created_at: "2021-03-28 18:47:12", updated_at: "2021-03-28 18:47:12">, #<Portfolio id: 2, title: "Portfolio title: 1", subtitle: "Ruby on rails", body: "But I must explain to you how all this mistaken id...", main_image: "https://via.placeholder.com/600x400", thumb_image: "https://via.placeholder.com/350x200", created_at: "2021-03-28 18:47:12", updated_at: "2021-03-28 18:47:12">, #<Portfolio id: 3, title: "Portfolio title: 2", subtitle: "Ruby on rails", body: "But I must explain to you how all this mistaken id...", main_image: "https://via.placeholder.com/600x400", thumb_image: "https://via.placeholder.com/350x200", created_at: "2021-03-28 18:47:12", updated_at: "2021-03-28 18:47:12">, #<Portfolio id: 4, title: "Portfolio title: 3", subtitle: "Ruby on rails", body: "But I must explain to you how all this mistaken id...", main_image: "https://via.placeholder.com/600x400", thumb_image: "https://via.placeholder.com/350x200", created_at: "2021-03-28 18:47:12", updated_at: "2021-03-28 18:47:12">, #<Portfolio id: 5, title: "Portfolio title: 4", subtitle: "Ruby on rails", body: "But I must explain to you how all this mistaken id...", main_image: "https://via.placeholder.com/600x400", thumb_image: "https://via.placeholder.com/350x200", created_at: "2021-03-28 18:47:12", updated_at: "2021-03-28 18:47:12">, #<Portfolio id: 6, title: "Portfolio title: 5", subtitle: "Ruby on rails", body: "But I must explain to you how all this mistaken id...", main_image: "https://via.placeholder.com/600x400", thumb_image: "https://via.placeholder.com/350x200", created_at: "2021-03-28 18:47:12", updated_at: "2021-03-28 18:47:12">, #<Portfolio id: 7, title: "Portfolio title: 6", subtitle: "Ruby on rails", body: "But I must explain to you how all this mistaken id...", main_image: "https://via.placeholder.com/600x400", thumb_image: "https://via.placeholder.com/350x200", created_at: "2021-03-28 18:47:12", updated_at: "2021-03-28 18:47:12">, #<Portfolio id: 8, title: "Portfolio title: 7", subtitle: "Ruby on rails", body: "But I must explain to you how all this mistaken id...", main_image: "https://via.placeholder.com/600x400", thumb_image: "https://via.placeholder.com/350x200", created_at: "2021-03-28 18:47:12", updated_at: "2021-03-28 18:47:12">]> 
2.4.6 :005 > Portfolio.where(subtitle: "Ruby on rails").count
   (0.6ms)  SELECT COUNT(*) FROM "portfolios" WHERE "portfolios"."subtitle" = $1  [["subtitle", "Ruby on rails"]]
 => 8 

# Add badge images to skills

$ rails g migration add_badge_to_skills badge:text
Running via Spring preloader in process 6260
/home/cristian/.rvm/gems/ruby-2.4.6/gems/spring-2.1.1/lib/spring/application.rb:204: warning: Insecure world writable dir /home/cristian/.rvm/gems/ruby-2.4.6/bin in PATH, mode 040777
      invoke  active_record
      create    db/migrate/20210328202247_add_badge_to_skills.rb

$ rails db:migrate
== 20210328202247 AddBadgeToSkills: migrating =================================
-- add_column(:skills, :badge, :text)
   -> 0.0683s
== 20210328202247 AddBadgeToSkills: migrated (0.0684s) ========================

# Creating technologies model

$ rails g model Technology name:string portfolio:references
Running via Spring preloader in process 11536
      invoke  active_record
      create    db/migrate/20210328205233_create_technologies.rb
      create    app/models/technology.rb

$ rails db:migrate
== 20210328205233 CreateTechnologies: migrating ===============================
-- create_table(:technologies)
   -> 0.3491s
== 20210328205233 CreateTechnologies: migrated (0.3492s) ======================

# creating a new technology and query technology portfolio
$ rails c
Running via Spring preloader in process 13171
Loading development environment (Rails 5.0.7.2)
2.4.6 :001 > Technology.create!(name: "Rails", portfolio_id: Portfolio.last.id)
  Portfolio Load (0.2ms)  SELECT  "portfolios".* FROM "portfolios" ORDER BY "portfolios"."id" DESC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
  SQL (1.0ms)  INSERT INTO "technologies" ("name", "portfolio_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Rails"], ["portfolio_id", 11], ["created_at", "2021-03-28 21:13:12.785773"], ["updated_at", "2021-03-28 21:13:12.785773"]]
   (22.7ms)  COMMIT
 => #<Technology id: 1, name: "Rails", portfolio_id: 11, created_at: "2021-03-28 21:13:12", updated_at: "2021-03-28 21:13:12"> 
2.4.6 :002 > Technology.last.portfolio
  Technology Load (0.3ms)  SELECT  "technologies".* FROM "technologies" ORDER BY "technologies"."id" DESC LIMIT $1  [["LIMIT", 1]]
  Portfolio Load (0.3ms)  SELECT  "portfolios".* FROM "portfolios" WHERE "portfolios"."id" = $1 LIMIT $2  [["id", 11], ["LIMIT", 1]]
 => #<Portfolio id: 11, title: "another portfolio", subtitle: "another portfolio subtitle", body: "another portfolio body", main_image: "http://placehold.it/600x400", thumb_image: "http://placehold.it/350x200", created_at: "2021-03-28 20:39:15", updated_at: "2021-03-28 20:39:15"> 

$ rails db:setup
Database 'devcamp_portfolio_development' already exists
Database 'devcamp_portfolio_test' already exists
-- enable_extension("plpgsql")
   -> 0.0153s
-- create_table("blogs", {:force=>:cascade})
   -> 0.3234s
-- create_table("friendly_id_slugs", {:force=>:cascade})
   -> 0.3669s
-- create_table("portfolios", {:force=>:cascade})
   -> 0.1086s
-- create_table("skills", {:force=>:cascade})
   -> 0.1587s
-- create_table("technologies", {:force=>:cascade})
   -> 0.1417s
-- create_table("topics", {:force=>:cascade})
   -> 0.0751s
-- add_foreign_key("blogs", "topics")
   -> 0.0082s
-- add_foreign_key("technologies", "portfolios")
   -> 0.0083s
-- initialize_schema_migrations_table()
   -> 0.0009s
-- enable_extension("plpgsql")
   -> 0.3072s
-- create_table("blogs", {:force=>:cascade})
   -> 0.3735s
-- create_table("friendly_id_slugs", {:force=>:cascade})
   -> 0.3173s
-- create_table("portfolios", {:force=>:cascade})
   -> 0.0917s
-- create_table("skills", {:force=>:cascade})
   -> 0.0919s
-- create_table("technologies", {:force=>:cascade})
   -> 0.1586s
-- create_table("topics", {:force=>:cascade})
   -> 0.1252s
-- add_foreign_key("blogs", "topics")
   -> 0.0501s
-- add_foreign_key("technologies", "portfolios")
   -> 0.0081s
-- initialize_schema_migrations_table()
   -> 0.0010s
3 topics created
10 blog post created
5 skills created
9 portfolio item created
3 technologies created

$ rails c
Running via Spring preloader in process 14150
Loading development environment (Rails 5.0.7.2)
2.4.6 :001 > Portfolio.last.technologies.count
  Portfolio Load (0.2ms)  SELECT  "portfolios".* FROM "portfolios" ORDER BY "portfolios"."id" DESC LIMIT $1  [["LIMIT", 1]]
   (0.4ms)  SELECT COUNT(*) FROM "technologies" WHERE "technologies"."portfolio_id" = $1  [["portfolio_id", 9]]
 => 3 
2.4.6 :002 > exit

# Testing nested attributes in object creation

$ rails c
Running via Spring preloader in process 21862
/home/cristian/.rvm/gems/ruby-2.4.6/gems/spring-2.1.1/lib/spring/application.rb:204: warning: Insecure world writable dir /home/cristian/.rvm/gems/ruby-2.4.6/bin in PATH, mode 040777
Loading development environment (Rails 5.0.7.2)
2.4.6 :001 > Portfolio.create!(title: "Web app", subtitle: "asdfasdf", body: "asdfasdf", technologies_attributes: [{name: 'Ruby'}, {name: 'Rails'}, {name: 'Angular'}, {name: 'Ionic'}])
   (0.1ms)  BEGIN
  SQL (0.4ms)  INSERT INTO "portfolios" ("title", "subtitle", "body", "main_image", "thumb_image", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING "id"  [["title", "Web app"], ["subtitle", "asdfasdf"], ["body", "asdfasdf"], ["main_image", "http://placehold.it/600x400"], ["thumb_image", "http://placehold.it/350x200"], ["created_at", "2021-03-29 01:23:49.949174"], ["updated_at", "2021-03-29 01:23:49.949174"]]
  SQL (0.6ms)  INSERT INTO "technologies" ("name", "portfolio_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Ruby"], ["portfolio_id", 10], ["created_at", "2021-03-29 01:23:49.951017"], ["updated_at", "2021-03-29 01:23:49.951017"]]
  SQL (0.2ms)  INSERT INTO "technologies" ("name", "portfolio_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Rails"], ["portfolio_id", 10], ["created_at", "2021-03-29 01:23:49.952082"], ["updated_at", "2021-03-29 01:23:49.952082"]]
  SQL (0.2ms)  INSERT INTO "technologies" ("name", "portfolio_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Angular"], ["portfolio_id", 10], ["created_at", "2021-03-29 01:23:49.952709"], ["updated_at", "2021-03-29 01:23:49.952709"]]
  SQL (0.2ms)  INSERT INTO "technologies" ("name", "portfolio_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["name", "Ionic"], ["portfolio_id", 10], ["created_at", "2021-03-29 01:23:49.953325"], ["updated_at", "2021-03-29 01:23:49.953325"]]
   (16.4ms)  COMMIT
 => #<Portfolio id: 10, title: "Web app", subtitle: "asdfasdf", body: "asdfasdf", main_image: "http://placehold.it/600x400", thumb_image: "http://placehold.it/350x200", created_at: "2021-03-29 01:23:49", updated_at: "2021-03-29 01:23:49"> 
2.4.6 :002 > Portfolio.last.technologies
  Portfolio Load (0.2ms)  SELECT  "portfolios".* FROM "portfolios" ORDER BY "portfolios"."id" DESC LIMIT $1  [["LIMIT", 1]]
  Technology Load (0.3ms)  SELECT "technologies".* FROM "technologies" WHERE "technologies"."portfolio_id" = $1  [["portfolio_id", 10]]
 => #<ActiveRecord::Associations::CollectionProxy [#<Technology id: 4, name: "Ruby", portfolio_id: 10, created_at: "2021-03-29 01:23:49", updated_at: "2021-03-29 01:23:49">, #<Technology id: 5, name: "Rails", portfolio_id: 10, created_at: "2021-03-29 01:23:49", updated_at: "2021-03-29 01:23:49">, #<Technology id: 6, name: "Angular", portfolio_id: 10, created_at: "2021-03-29 01:23:49", updated_at: "2021-03-29 01:23:49">, #<Technology id: 7, name: "Ionic", portfolio_id: 10, created_at: "2021-03-29 01:23:49", updated_at: "2021-03-29 01:23:49">]> 
2.4.6 :003 > Portfolio.last.technologies.count
  Portfolio Load (0.4ms)  SELECT  "portfolios".* FROM "portfolios" ORDER BY "portfolios"."id" DESC LIMIT $1  [["LIMIT", 1]]
   (0.5ms)  SELECT COUNT(*) FROM "technologies" WHERE "technologies"."portfolio_id" = $1  [["portfolio_id", 10]]
 => 4 

$ bundle install
The dependency tzinfo-data (>= 0) will be unused by any of the platforms Bundler is installing for. Bundler is installing for ruby but the dependency is only for x86-mingw32, x86-mswin32, x64-mingw32, java. To add those platforms to the bundle, run `bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java`.                                     
Fetching gem metadata from https://rubygems.org/............
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
Using bcrypt 3.1.16
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
Using orm_adapter 0.5.0
Fetching responders 3.0.1
Installing responders 3.0.1
Fetching warden 1.2.9
Installing warden 1.2.9
Fetching devise 4.7.3
Installing devise 4.7.3
Using ffi 1.15.0
Using friendly_id 5.1.0
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
Bundle complete! 17 Gemfile dependencies, 68 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.

$ rails generate devise:install
Running via Spring preloader in process 11213
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
===============================================================================

Depending on your application's configuration some manual setup may be required:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

     * Required for all applications. *

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"
     
     * Not required for API-only Applications *

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

     * Not required for API-only Applications *

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views
       
     * Not required *

===============================================================================

