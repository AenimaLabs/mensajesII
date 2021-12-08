class Propietario < ApplicationRecord
  belongs_to :usuario
  belongs_to :blog
end
