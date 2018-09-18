# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

rails generate scaffold category name:string description:string
rails generate scaffold announcement title:string body:string image:string status:integer cause:string publication:datetime category:references
rails generate scaffold message title:string body:string status:integer
rails generate scaffold historyAnnouncement title:string body:string image:string status:integer cause:string publication:datetime category:references
rails generate scaffold role name:string

