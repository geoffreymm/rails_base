# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#admin users
u = User.find_or_create_by(email: "geoffrey24@gmail.com" )
#u.name = "Super admin"
u.password = "admin123"
#u.role_admin = "super_admin"
u.save
