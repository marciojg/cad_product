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

* ...

GEMS EXTRAS

- magic_frozen_string_literal
-  gem 'rspec-rails'
  -gem 'factory_bot_rails'

The above comment at top of a file changes semantics of static string literals in the file. The static string literals will be frozen and always returns same object. (The semantics of dynamic string literals is not changed.) This way has following benefits: No ugly f-suffix. No syntax error on older Ruby. We need only a line for each file.
