class Tradition < ApplicationRecord
  has_many :spell_traditions
  has_many :spells, through: :spell_traditions
end