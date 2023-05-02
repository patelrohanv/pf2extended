# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

traditions = [
  { name: 'Arcane', description: 'Arcane magic comes from the understanding and manipulation of the universe\'s fundamental forces and energies.' },
  { name: 'Divine', description: 'Divine magic is granted by deities or other powerful entities as a reward for their followers\' devotion and service.' },
  { name: 'Occult', description: 'Occult magic deals with the hidden and mysterious forces of the world, often drawing power from ancient relics and forgotten secrets.' },
  { name: 'Primal', description: 'Primal magic is the raw power of the natural world, channeled by those with a deep connection to the forces of life and nature.' },
  { name: 'Null', description: 'Null tradition represents a lack of magical tradition, often used for spells that have no specific tradition or are universally accessible.' }
]

traditions.each do |tradition|
  Tradition.find_or_create_by(name: tradition[:name], description: tradition[:description])
end

schools_of_magic = [
  { name: 'Abjuration', description: 'Abjuration spells protect and shield, often creating barriers or wards to guard against harm.' },
  { name: 'Conjuration', description: 'Conjuration spells summon creatures or objects, transport creatures or objects across distances, or create physical phenomena.' },
  { name: 'Divination', description: 'Divination spells reveal information, uncover hidden truths, and grant glimpses of the future.' },
  { name: 'Enchantment', description: 'Enchantment spells charm, compel, or influence others by altering their thoughts and emotions.' },
  { name: 'Evocation', description: 'Evocation spells create, manipulate, or shape energy and matter, often causing direct harm to creatures or objects.' },
  { name: 'Illusion', description: 'Illusion spells deceive the senses, create phantasms, or alter reality to confuse or harm creatures.' },
  { name: 'Necromancy', description: 'Necromancy spells manipulate life and death, often draining life energy, animating the dead, or manipulating the soul.' },
  { name: 'Transmutation', description: 'Transmutation spells alter the properties of creatures or objects, changing their form or function.' }
]

schools_of_magic.each do |school|
  School.find_or_create_by(name: school[:name], description: school[:description])
end
