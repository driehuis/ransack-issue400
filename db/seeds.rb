# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

os_release_1 = OsRelease.create!(id:1, name: "precise")
os_release_2 = OsRelease.create!(id:2, name: "trusty")
host_1 = Host.create!(id: 1, fqdn: "server1", os_release: os_release_1)
