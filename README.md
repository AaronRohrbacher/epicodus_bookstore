# Epicodus Bookstore
_A simple, full-featured shopping cart application written in Ruby on Rails. Payments are handled using the Stripe API, and the Stripe Ruby Gem._

## Installation
* _NOTE:_ For security purposes, the API key for Stripe is not included in this repository, and test payments will not function without it. If you'd like to run this application with Stripe's full functionality, visit http://stripe.com and obtain your own API key, or email me at arjazz@icloud.com for more information.
  * This application uses the dotenv-rails gem to search for .env files, which have been ignored in this repository. To use your own API key for Stripe, create a file in the root directory of the project named '.env', and add the following lines of code:
``  PUBLISHABLE_KEY='your new publishable key'
  SECRET_KEY='your new secret key'
``
* This application was built on Ruby 2.4.1 on Rails 5.1.4, using PostgreSQL as a database server. If you have these or equivalent versions installed, you're ready to install this repository:
  * If you need to install Ruby and/or Rails, I reccommend a version manager. Apple users, don't use the pre-installed version of Ruby. Check out https://github.com/postmodern/chruby, great start-up documentation, and a great ruby version manager and installer. Use the instructions to install with Homebrew (https://brew.sh/).

  * These setup instructions assume the use of PostgreSQL as a SQL server (https://www.postgresql.org/). You can use any SQL server, such as mySQL, but these instructions only support Postgres, and I have not tested on other SQL servers.

* Clone this repository `$ git clone https://github.com/aaronrohrbacher/epicodus_bookstore`
* Navigate to the root directory of this project: `$ cd epicodus_bookstore`
* Install dependencies: `$ bundle install`
* Start your Postgres server: `$ postgres`
* Create and migrate the databases (pre-seeded and ready to go!): `$ rails db:setup`
* Open a new terminal tab, and serve the project in development mode: `$ rails s`
* Open your favorite web browser, point to http://localhost:3000/ (most common configuration), and have fun! This is a fully-featured shopping cart system, with user authentication and payment-ready (don't forget, you'll need to get an API key and include it in the code.)

## Use

* I've seeded the database with two users, a user and an admin.
  * User: user@user.com password: 111111
  * Admin: admin@admin.com password: 111111

* Admins can edit/delete books, and access the Rails Admin route (http://localhost:3000/admin).

* Play around! Create items, edit your account, edit items, delete items, create accounts, etc.

* You can use Rails Admin (http://localhost:300/admin) to make a user an admin, if you're logged in as an admin. I recommend using the Rails console for this, but it is a nice feature.

## Technologies used

* Built in Ruby 2.4.1 on Rails 5.1.4
* Uses Postgres as SQL server
* uses Rails Admin gem
* Authentication with the Devise gem, customized.
* Test e-mails sent with the Letter Opener gem.
* Image upload capability uses the Paperclip gem.
