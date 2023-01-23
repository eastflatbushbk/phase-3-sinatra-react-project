puts "🔨 destroying tables..."

# Seed your database here
Player.destroy_all
Team.destroy_all


puts "🌱 Seeding teams..."

Team.create([
  {
    name: "Beer Belly United",
    neighborhood: "Brownsville ",
    homeground: "Brownsville Rec Center"
  },
  {
    name: "Beef Patty FC",
    neighborhood: "Flatbush",
    homeground: "Wingate park"
   },
  {
    name: "The Slopers",
    neighborhood: "Park Slope",
    homeground: "prospect park"
   },
  {
    name: "Dyslexia Untied",
    neighborhood: "Bed Stuy",
    homeground: "Herbert Von king park"
   },
  {
    name: "Fish & Chips soccer club",
    neighborhood: "Marine park",
    homeground: "Marine park"
   },
  {
    name: "Man Chest Hair United",
    neighborhood: "Downtown Brooklyn",
    homeground: "Commodore Barry Park"
   }
])

puts "🌱 Seeding players..."

Player.create([
  {
    name: "Jeff",
    position: "goalkeeper",
    status: "available",
    team_id: 1
  },
  {
    name: "Jeff",
    position: "forward",
    status: "available",
    team_id: 3
  },
  {
   name: "Rob",
    position: "defense",
    status: "available",
    team_id: 2
  },
  {
   name: "Arthur",
    position: "midfield",
    status: "available",
    team_id: 4
  },
  {
    name: "Abigail",
    position: "goalkeeper",
    status: "available",
    team_id: 5
  },
  {
    name: "Ricardo",
    position: "forward",
    status: "available",
    team_id: 6
  },
  {
    name: "Joshua",
    position: "forward",
    status: "unavailable",
    team_id: 6
  }
])


puts "✅ Done seeding!"


