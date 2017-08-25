# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'


csv_text = File.read(Rails.root.join('lib', 'seeds', 'doctor_who_test.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Episode.new
  t.name = row['episode_name']
  t.number = row['episode_id']
  t.save
  puts "#{t.name}, #{t.number} saved"
end

puts "There are now #{Episode.count} rows in the transactions table"
