class SpellSchool < ApplicationRecord
  belongs_to :spell
  belongs_to :school
end
