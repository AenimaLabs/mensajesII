class Mensaje < ApplicationRecord
  belongs_to :usuario
  belongs_to :publicacion

  validates :autor, :mensaje, presence: true
  
end
