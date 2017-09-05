# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Industry.delete_all
puts 'Creating categories!'

categories = ['Moving', 'Plumbing', "Electrical", "Housing Agent", "Exterminator", "Ayi", "Phone Repair", "Computer Repair"]
url = "http://res.cloudinary.com/dck6gtint/image/upload/v1503116553/pexels-photo-68084-1_zzutth.jpg"

10.times do 
	Industry.create(description: categories.sample, photo_url: url)
end
puts 'Finished creating categories'