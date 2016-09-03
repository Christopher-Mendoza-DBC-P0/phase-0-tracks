#8.5 - Creating a random villain-minion creator for my friend's dungeon and dragons game times.  I will use a sqlite3 database to keep the villain's persistent.

#require gems
require 'sqlite3'
require 'faker'

#create SQLite3 database
db = SQLite3::Database.new("minions.db")
db.results_as_hash = true

#string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS minion(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    race VARCHAR(255),
    weapon VARCHAR(255),
    treasure VARCHAR(255),
    hp INT
  )
SQL
#race: goblin or orc
#weapon: knife, club, shortsword, hands
#treasure: silver, gold, copper (ie.random number 2-6)

#create a minion table (if it's not there already)
db.execute(create_table_cmd)

#add a test minion
#db.execute("INSERT INTO minion (name, race, weapon, treasure, hp) VALUES ('bob', 'goblin', 'hands', '1G', 3)")

def create_minion(db, name, race, weapon, treasure, hp)
  db.execute("INSERT INTO minion (name, race, weapon, treasure, hp) VALUES (?, ?, ?, ?, ?)", [name, race, weapon, treasure, hp])
end

def create_race
  race_array = ["goblin", "orc"]
  race = race_array.sample
end

def create_weapon
  weapon_array = ["knife", "club", "shortsword", "hands"]
  weapon = weapon_array.sample
end

def create_treasure
  treasure_number_array = ["2","3","4","5","6"]
  treasure_type_array = ["Gold", "Silver", "Copper"]
  treasure = treasure_number_array.sample + " " + treasure_type_array.sample
end

def create_hp
  hp = rand(1..6)
end

100.times do
  race = create_race
  weapon = create_weapon
  treasure = create_treasure
  hp = create_hp
  create_minion(db, Faker::Name.name, race, weapon, treasure, hp)
end

