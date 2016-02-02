# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Albums and Images
2.times do |n|
  album = Album.create(title: "Album-#{n+1}", description: "testing")
  # Images
  2.times do |j|
    Image.create(title: "Photo-#{j+1}", description: "testing", album_id: album.id)
  end
end 
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')