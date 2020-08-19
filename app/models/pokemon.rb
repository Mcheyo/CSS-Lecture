class Pokemon < ApplicationRecord
    has_many :pokeballs
    has_many :trainers, through: :pokeballs
end
