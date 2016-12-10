# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


6.times do |i|
  Gato.create(name: "Gatito ##{i}", gender: "M", race: "Siamês", color: "Preto/Cinzento")
  Gato.create(name: "Gatita ##{i}", gender: "F", race: "Siamês", color: "Preto/Cinzento")
end
