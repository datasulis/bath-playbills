# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

manifest = JSON.load( File.new( "db/manifest.json") )
manifest["books"].each do |slug, hash|
  Book.create_from_manifest(slug, hash)
end