class School < ApplicationRecord
  has_many :spell_schools
  has_many :spells, through: :spell_schools
end