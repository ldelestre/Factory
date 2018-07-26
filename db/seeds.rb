require 'faker'

5.times do
    Part.create(part_number: Faker::Lorem.word)
end

5.times do
    Assembly.create(name: Faker::Name.first_name)
end

5.times do |i|
	Assembly.find(i+1).parts = [Part.find(rand(Part.first.id..Part.last.id))]
end