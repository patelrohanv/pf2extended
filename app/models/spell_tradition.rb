class SpellTradition < ApplicationRecord
  belongs_to :spell
  belongs_to :tradition
end
