require_relative 'wedding_app'
require 'sequel'

DB = Sequel.connect('postgres://gschool_user:password@localhost/wedding_development')

run WeddingApp