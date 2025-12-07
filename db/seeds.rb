# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing data..."
Observation.destroy_all
User.destroy_all
StarPattern.destroy_all
WavePattern.destroy_all
BirdMigration.destroy_all

puts "Creating users..."
user1 = User.create!(name: "Ron",  email: "ron@example.com",  password: "password")
user2 = User.create!(name: "Lina", email: "lina@example.com", password: "password")

puts "Creating star patterns..."
star1 = StarPattern.create!(
  name: "Polaris",
  direction: "N",
  rising_point: "Fixed",
  description: "A stable star used for north direction guidance."
)

star2 = StarPattern.create!(
  name: "Sialik",
  direction: "ENE",
  rising_point: "Slightly north of east",
  description: "A traditional Micronesian rising star."
)

puts "Creating wave patterns..."
wave1 = WavePattern.create!(
  name: "Tradewind Swell",
  direction: "NE",
  consistency: "Daily",
  description: "A reliable swell direction caused by tradewinds."
)

puts "Creating bird migrations..."
bird1 = BirdMigration.create!(
  bird_name: "Frigate",
  movement_direction: "Circles above ocean",
  indicator: "Seen near land at dawn",
  description: "Frigates often stay near atolls."
)

puts "Creating observations..."
Observation.create!(
  user: user1,
  star_pattern: star2,
  wave_pattern: wave1,
  bird_migration: bird1,
  notes: "Sialik rising, tradewind swell, frigates nearby."
)

puts "✅ Seeding complete."
