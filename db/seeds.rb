# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# puts "Clearing data..."
# Observation.destroy_all
# User.destroy_all
# StarPattern.destroy_all
# WavePattern.destroy_all
# BirdMigration.destroy_all

# puts "Creating users..."
# user1 = User.create!(name: "Ron",  email: "ron@example.com",  password: "password")
# user2 = User.create!(name: "Lina", email: "lina@example.com", password: "password")

# puts "Creating star patterns..."
# star1 = StarPattern.create!(
#   name: "Polaris",
#   direction: "N",
#   rising_point: "Fixed",
#   description: "A stable star used for north direction guidance."
# )

# star2 = StarPattern.create!(
#   name: "Sialik",
#   direction: "ENE",
#   rising_point: "Slightly north of east",
#   description: "A traditional Micronesian rising star."
# )

# puts "Creating wave patterns..."
# wave1 = WavePattern.create!(
#   name: "Tradewind Swell",
#   direction: "NE",
#   consistency: "Daily",
#   description: "A reliable swell direction caused by tradewinds."
# )

# puts "Creating bird migrations..."
# bird1 = BirdMigration.create!(
#   bird_name: "Frigate",
#   movement_direction: "Circles above ocean",
#   indicator: "Seen near land at dawn",
#   description: "Frigates often stay near atolls."
# )

# puts "Creating observations..."
# Observation.create!(
#   user: user1,
#   star_pattern: star2,
#   wave_pattern: wave1,
#   bird_migration: bird1,
#   notes: "Sialik rising, tradewind swell, frigates nearby."
# )

# puts "✅ Seeding complete."


puts "🌱 Resetting database..."

Observation.destroy_all
User.destroy_all
StarPattern.destroy_all
WavePattern.destroy_all
BirdMigration.destroy_all

puts "🌱 Creating users..."

user1 = User.create!(name: "Ron",  email: "ron@example.com",  password: "password")
user2 = User.create!(name: "Lina", email: "lina@example.com", password: "password")
user3 = User.create!(name: "Kai",  email: "kai@example.com",  password: "password")

puts "🌟 Creating Star Patterns..."

star1 = StarPattern.create!(
  name: "Polaris",
  direction: "N",
  rising_point: "Fixed",
  description: "A stable northern star used for directional orientation."
)

star2 = StarPattern.create!(
  name: "Sialik",
  direction: "ENE",
  rising_point: "Slightly North of East",
  description: "A key star used in Micronesian rising points."
)

star3 = StarPattern.create!(
  name: "Weriyeng",
  direction: "SE",
  rising_point: "South of East",
  description: "Used by Carolinian navigators for southeast heading."
)

star4 = StarPattern.create!(
  name: "Altair",
  direction: "E",
  rising_point: "True East",
  description: "Bright star commonly used in star compass navigation."
)

star5 = StarPattern.create!(
  name: "Antares",
  direction: "SW",
  rising_point: "South of West",
  description: "Helps indicate seasonal changes and southern headings."
)

puts "🌊 Creating Wave Patterns..."

wave1 = WavePattern.create!(
  name: "Tradewind Swell",
  direction: "NE",
  consistency: "Daily",
  description: "Dominant east-to-west Pacific swell."
)

wave2 = WavePattern.create!(
  name: "Storm Swell",
  direction: "NW",
  consistency: "Seasonal",
  description: "Large waves travelling ahead of northern storms."
)

wave3 = WavePattern.create!(
  name: "Monsoon Swell",
  direction: "SW",
  consistency: "Seasonal",
  description: "Southwest swell arriving during monsoon winds."
)

wave4 = WavePattern.create!(
  name: "Cross-Swell",
  direction: "E ↔ W",
  consistency: "Variable",
  description: "Two intersecting swells that may signal nearby land."
)

wave5 = WavePattern.create!(
  name: "Reflection Swell",
  direction: "Varies",
  consistency: "Rare",
  description: "Occurs when waves bounce back off a nearby island or reef."
)

puts "🕊️ Creating Bird Migration Patterns..."

bird1 = BirdMigration.create!(
  bird_name: "Frigate",
  movement_direction: "Circles Above Ocean",
  indicator: "Seen within 50 miles of land",
  description: "Stays near islands for nesting."
)

bird2 = BirdMigration.create!(
  bird_name: "Booby",
  movement_direction: "W → E",
  indicator: "Returns to land every night",
  description: "Common land-finding indicator."
)

bird3 = BirdMigration.create!(
  bird_name: "Tern",
  movement_direction: "Erratic",
  indicator: "Seen during island proximity",
  description: "Strong clue that land is close."
)

bird4 = BirdMigration.create!(
  bird_name: "Shearwater",
  movement_direction: "SE → NW",
  indicator: "Long-distance pelagic bird",
  description: "Its return path can indicate island direction."
)

bird5 = BirdMigration.create!(
  bird_name: "Noddy",
  movement_direction: "Northbound at dusk",
  indicator: "Used to identify atoll locations",
  description: "Feeds at sea during daylight, returns at sunset."
)

puts "📝 Creating Observations..."

Observation.create!(
  user: user1,
  star_pattern: star2,
  wave_pattern: wave1,
  bird_migration: bird1,
  notes: "Clear sky. Sialik rising ENE. Tradewind swell consistent. Frigates overhead."
)

Observation.create!(
  user: user1,
  star_pattern: star4,
  wave_pattern: wave3,
  bird_migration: nil,
  notes: "Altair rising from True East. SW monsoon swell detectable."
)

Observation.create!(
  user: user2,
  star_pattern: nil,
  wave_pattern: wave4,
  bird_migration: bird2,
  notes: "Cross-swell present. Boobies returning west at sunset."
)

Observation.create!(
  user: user2,
  star_pattern: star3,
  wave_pattern: nil,
  bird_migration: bird4,
  notes: "Weriyeng visible SE. Shearwaters migrating NW."
)

Observation.create!(
  user: user3,
  star_pattern: star5,
  wave_pattern: wave2,
  bird_migration: bird5,
  notes: "Antares low in SW sky. Storm swell from NW. Noddies flying northbound."
)

puts "🌱 Seeding complete!"
