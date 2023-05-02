class Spell < ApplicationRecord
  has_many :spell_schools
  has_many :schools, through: :spell_schools
  has_many :spell_traditions
  has_many :traditions, through: :spell_traditions
end