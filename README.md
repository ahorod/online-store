# Zapaska

#### Ruby on Rails Independent Project, 06/30/2017

#### By Anna Horodetska

## Description

Online store is a web app that allows to add, edit, delete products. Users can add and delete reviews.

### Core Functionality
* _product_
- [x] Site admins should be able to add, update and delete new products.
- [x] Users should be able to click an individual product to see its detail page.
- [x] Users should be able to add a review to a product.
* _Scope_
- [x] The product with the most reviews.
- [x] The three most recently added products.
- [x] All products made in the USA for buyers that want to buy local products.
* _Validation_
- [x] All fields should be filled out, including rating.
- [x] Rating can only be an integer between 1 and 5.
- [x] The review's content_body must be between 50 and 250 characters.
* _Seeding_
- [x] project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.

## Setup

* Ruby Rails
* PostgreSQL
* Clone https://github.com/ahorod/online-store
* Go to online-store derictory
* Run bundle install
* Open new tab in the terminal run:
* `postgres`
* Run `rails db:create` , `rails db:migrate db:test:prepare`, `rails db:seed`
* To launch the application run `rails s`
* Open app at [http://localhost:3000](http://localhost:3000).

## Technologies Used

_HTML_

_SCSS_

_Bootstrap_

_Ruby_

_Ruby on Rails_

_Postgres SQL_

### License

Copyright (c) 2017 Anna Horodetska
The website is licensed under the MIT license.
