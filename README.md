# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

     2.3.1

* Rails version

     5.0.4  

* System dependencies

* Configuration

* Database creation

    rake db:create
    rake db:migrate
    rake db:schema:load

* Database initialization

    rake db:seed

* How to run the test suite

    rspec filepath

* API End points

    1. Get a list of movies - API call with JSON response

      http://localhost:3000/api/v1/movies

    2.Get particular movie - API call with JSON response

      http://localhost:3000/api/v1/movies/1

    3.Get particular movie all reviews - API call JSON with response

      http://localhost:3000/api/v1/movies/1/reviews

    4.Get particular movie particular review - API call JSON with response

      http://localhost:3000/api/v1/movies/1/reviews/1

    5.Get average rating for any movie - API call with JSON response

      http://localhost:3000/api/v1/movies/1/reviews/average

